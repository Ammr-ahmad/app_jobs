import 'package:final_project_job2023/controllers/auth1_provider.dart';
import 'package:final_project_job2023/components/appbar/appbar_auth.dart';
import 'package:final_project_job2023/components/bottom_navbar/bottom_nav_main.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);
  static const routeName = 'SignIn';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool securePassword = true;
  bool isLoading = false;
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarAuth(),
      body: Stack(
        children: [
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.all(15),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 20),
                              child: SingleChildScrollView(
                                child: Row(
                                  children: const [
                                    Text(
                                      'Sign In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const [
                                  Text(
                                    "Welcome Back",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Sign in with your email and password  \nor continue with Jordan JobSeekers",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(),
                    child: Form(
                      key: formstate,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            style: const TextStyle(color: Colors.black),
                            controller: emailController,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return 'email address must not be empty';
                              }
                              return null;
                            }),
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
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Your Password must be not empty pleas enter password  ";
                              }
                              if (value.length < 6) {
                                return "password can't be less than 6 letter";
                              }
                              return null;
                            },
                            obscureText: securePassword,
                            cursorColor: Colors.black,
                            cursorHeight: 22,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black45,
                                    width: 2,
                                  )),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    securePassword = !securePassword;
                                  });
                                },
                                child: Icon(
                                  securePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              hintText: 'password',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<ProviderSignIn>(
                    builder: (ctx, authProvider, ch) {
                      return authProvider.getIsAuthStatus
                          ? const CircularProgressIndicator(
                              color: Colors.red,
                              backgroundColor: Colors.green,
                            )
                          : Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Center(
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 60,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        elevation: 0.6,
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () async {
                                        await authProvider
                                            .loginApi(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text)
                                            .then((value) {
                                          if (value) {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return const BottomNavigationBarPages();
                                                },
                                              ),
                                            );
                                          } else {
                                            print("7aga 3lat");
                                          }
                                        });
                                      },
                                      child: const Text(
                                        'SIGN IN ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                            letterSpacing: 2,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            );
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            elevation: 0.6,
                            backgroundColor: Colors.blue.shade800,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(SignUpScreen.routeName);
                          },
                          child: const Text(
                            'Register Account',
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


  // Future<void> signIn() async {
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim(),
  //     );

  //     Navigator.of(context).push(
  //       MaterialPageRoute(
  //         builder: (context) {
  //           return const BottomNavigationBarPages();
  //         },
  //       ),
  //     );
  //   } catch (e) {
  //     print(e);
  //   }
  // }