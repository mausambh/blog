import 'package:blog/presentation/resources/color_manager.dart';
import 'package:blog/presentation/resources/size_config.dart';
import 'package:blog/presentation/resources/strings_manager.dart';
import 'package:blog/presentation/sign_in/sign_in_controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resources/assets_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/social_card.dart';
// import 'package:login/extensions.dart';

class LoginFormClass extends StatefulWidget {
  const LoginFormClass({Key? key}) : super(key: key);
  @override
  State<LoginFormClass> createState() => _LoginFormClassState();
}

class _LoginFormClassState extends State<LoginFormClass> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final SignInController _signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorManager.kPrimaryColor,
          title: const Text(
            "Login Page",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                // logo
                const Icon(
                  Icons.account_circle_rounded,
                  size: 100,
                ),
                const SizedBox(height: 50),
                Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            labelText: AppStrings.username,
                            hintText: AppStrings.enterUsername,
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 25),
                        Obx(
                          () => TextFormField(
                            obscureText: _signInController.isObscure.value,
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              labelText: AppStrings.enterPassword,
                              hintText: AppStrings.password,
                              suffixIcon: IconButton(
                                icon: Icon(!_signInController.isObscure.value
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  _signInController.changeObscure();
                                },
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 25),
                        GestureDetector(
                          child: TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                    context, Routes.mainScreen);
                              }
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.only(
                                      right: 40,
                                      left: 40,
                                      top: 15,
                                      bottom: 15)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  ColorManager.kSecondaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                // side: const BorderSide()),
                              )),
                            ),
                            child: const Text(
                              AppStrings.signIn,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),

                        // GestureDetector(
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       // Validate returns true if the form is valid, or false otherwise.
                        //       if (_formKey.currentState!.validate()) {
                        //         // Navigator.pop(context, Routes.thirdScreen);
                        //         Navigator.pushReplacementNamed(
                        //             context, Routes.dashboardScreen);
                        //         //   // If the form is valid, display a snackbar. In the real world,
                        //         //   // you'd often call a server or save the information in a database.

                        //       }
                        //       // Navigator.pop(context);
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //       backgroundColor: ColorManager.kSecondaryColor,
                        //       padding: const EdgeInsets.only(
                        //           left: 50, right: 50, top: 10, bottom: 10),
                        //     ),
                        //     child: const Text(
                        //       AppStrings.signIn,
                        //       style:
                        //           TextStyle(color: Colors.black, fontSize: 20),
                        //     ),
                        //   ),
                        // ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                AppStrings.forgotPassword,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.registerScreen);
                              },
                              child: const SizedBox(
                                child: Text("Not a Member? SIGN UP ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: ImageAssets.googleIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssets.faceBookIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssets.twitterIcon,
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
