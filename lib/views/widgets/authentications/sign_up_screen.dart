import 'package:final_project_job2023/components/appbar/appbar_auth.dart';
import 'package:final_project_job2023/views/widgets/authentications/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);
  static const routeName = 'SignUp';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateInputController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool secure = true;
  String? gender;
  String? dateofbarith;

  // Future<void> signUp() async {
  //   try {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: usernameController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   }
  // }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    usernameController.dispose();
    phoneController.dispose();
  }

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
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Complete your details or continue with Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    Text(
                      'User Name',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usernameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "user name not valid pleas enter user name ";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          cursorColor: Colors.black,
                          cursorHeight: 22,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 2,
                                )),
                            hintText: 'Enter your full name',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please, Enter your email address";
                            } else {
                              return null;
                            }
                          },
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.length < 10) {
                              return "can't be password less than 10 character pleas Enter password corectted ";
                            }
                            if (value.contains('@')) {
                              return "Email Should contains @";
                            }
                            return null;
                          },
                          obscureText: secure,
                          keyboardType: TextInputType.visiblePassword,
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
                                  secure = !secure;
                                });
                              },
                              child: Icon(
                                secure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: 'Enter Your Password',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gender',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Radio(
                                activeColor: Colors.white,
                                value: 'Male',
                                groupValue: gender,
                                onChanged: ((val) {
                                  setState(() {
                                    gender = val;
                                  });
                                })),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Radio(
                                activeColor: Colors.white,
                                value: 'Female',
                                groupValue: gender,
                                onChanged: ((val) {
                                  setState(() {
                                    gender = val;
                                  });
                                })),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Phone',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: phoneController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Pleas Enter Your Phone Number  ";
                            }
                            if (value.length < 10) {
                              return "phone can't to be less than 10 Number pleas Enter corectted phone Number";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          cursorColor: Colors.black,
                          cursorHeight: 22,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 2,
                                )),
                            hintText: 'Enter Phone Number',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please Enter your Date and year ';
                            }
                            return null;
                          },
                          enabled: true,
                          controller: dateInputController,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2050));
                            if (pickedDate != null) {
                              dateInputController.text =
                                  DateFormat('dd MMMM yyyy').format(pickedDate);
                            }
                          },
                          cursorColor: Colors.black,
                          cursorHeight: 22,
                          decoration: InputDecoration(
                            prefixIcon:
                                const Icon(Icons.calendar_today_rounded),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 2,
                                )),
                            hintText: 'Enter your Date Of Birth',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(children: const [
                          Text(
                            'MM/DD/YYYY',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 0.6,
                        backgroundColor: Colors.blue.shade900,
                      ),
                      onPressed: () {
                        setState(() {
                          if (formkey.currentState!.validate()) {
                            //signUp;
                            // usersignUp(
                            //   usernameController.text,
                            //   emailController.text,
                            //   passwordController.text,
                            //   phoneController.text,
                            //   dateInputController.text,
                            // );
                          }
                          Navigator.pop(context);
                        });
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
