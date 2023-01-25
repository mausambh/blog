import 'package:blog/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resources/color_manager.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  // const ProfileDetails({Key? key}) : super(key: key);
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text(
                        'Profile Details',
                        style: GoogleFonts.lato(
                            color: Colors.grey[800],
                            fontSize: 26,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 13, right: 20, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Edit',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    height: 180,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(140)),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=400',
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 210,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: ColorManager.kSecondaryColor,
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.userName,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.userRole,
                                    style: TextStyle(
                                      color: ColorManager.kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.userComplay,
                                    style: TextStyle(
                                      color: ColorManager.kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.userLocation,
                                    style: TextStyle(
                                      color: ColorManager.kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )))),
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: ColorManager.kSecondaryColor,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                    ),
                                    Text(
                                      AppStrings.privateInfo,
                                      style: TextStyle(
                                        color: ColorManager.kTextColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.email,
                                    ),
                                    Text(
                                      AppStrings.userEmail,
                                      style: TextStyle(
                                        color: ColorManager.kTextColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.phone_android,
                                    ),
                                    Text(
                                      AppStrings.userPhone,
                                      style: TextStyle(
                                        color: ColorManager.kTextColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                      SizedBox(
                          height: 50,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_city_outlined,
                                    ),
                                    Text(
                                      AppStrings.userLocation,
                                      style: TextStyle(
                                        color: ColorManager.kTextColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ))),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
