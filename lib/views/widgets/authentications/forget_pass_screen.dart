import 'package:final_project_job2023/components/appbar/appbar_auth.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatefulWidget {
  static const routeName = 'ForgotPassword';
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> formemail = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarAuth(),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                  child: Text(
                    "Please enter your email and we will send you a link to return to your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: formemail,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Filed not be email try the enter email';
                      } else {
                        return null;
                      }
                    },
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    cursorHeight: 22,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black45,
                            width: 2,
                          )),
                      hintText: 'Enter your Email',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 0.6,
                      backgroundColor: Colors.blue.shade800,
                    ),
                    onPressed: () async {
                      if (formemail.currentState!.validate()) {
                        return await FirebaseAuth.instance
                            .sendPasswordResetEmail(email: email.text.trim());
                      }
                    },
                    child: const Text(
                      'CONFIRM Password',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    const Center(
                      child: Text(
                        'Dont have an account?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignUp.routeName);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}


// if (formemail.currentState!.validate()) {
//                         return await FirebaseAuth.instance
//                             .sendPasswordResetEmail(email: email.text.trim());
//                       }