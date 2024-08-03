import 'package:flutter/material.dart';
import 'package:myapp/component/my_button.dart';
import 'package:myapp/component/my_textfield.dart';
import 'package:myapp/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  //register method
  void register() async {
    //get Auth
    final _authService = AuthService();

    //check if passwords match->create user
    if (passwordController.text == confirmpasswordController.text) {
      //try creating user
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      }

      //display any error
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }


    //if passwords don't match -> show error
    else{
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Password doesnt match"),
          ),
        );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_person_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            //message
            Text(
              "Lets Create an User Id",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(
              height: 25,
            ),

            //email
            MyTextfield(
              controller: emailController,
              hintText: "Email ID",
              obsecureText: false,
            ),

            const SizedBox(
              height: 25,
            ),

            //password
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obsecureText: true,
            ),

            const SizedBox(
              height: 25,
            ),

            MyTextfield(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              obsecureText: true,
            ),

            const SizedBox(
              height: 25,
            ),

            //sign Up button
            MyButton(
              text: "Sign Up",
              onTap: register,
            ),

            const SizedBox(
              height: 25,
            ),

            //Already have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
