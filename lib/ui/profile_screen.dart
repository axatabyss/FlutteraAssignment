
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../utils/modify_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  bool headerState = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        decoration: const BoxDecoration(
            color: ModifyColors.bgMain
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: const Text("Company\nAttendance\nInformation", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500))
                )
            ),





            Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: ModifyColors.lightGreyColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("State", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                            Expanded(child: Container()),

                            const Text("Tamil Nadu", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                          ],
                        )
                    ),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("District", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                            Expanded(child: Container()),

                            const Text("Erode", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                          ],
                        )
                    ),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("Zone", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                            Expanded(child: Container()),

                            const Text("A", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                          ],
                        )
                    ),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("Company", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                            Expanded(child: Container()),

                            const Text("Company Name", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                          ],
                        )
                    ),


                  ],
                )
            ),


            Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const BoxDecoration(
                          color: ModifyColors.lightGreyColor,
                        ),
                        child: const Center(
                            child: Text("Security Head Details", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600))
                        )
                    ),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Name", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("Officer Name", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Designation", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("Designation", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Email", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("sample@gmail.com", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Number", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("9123456789", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Username", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("@polling_officer", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  const Text("Password", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  Text("**********", style: TextStyle(fontSize: 14, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),

                                  const SizedBox(width: 5),

                                  const Icon(Icons.edit_note, size: 20),

                                ],
                              )
                          ),

                        ],
                      ),
                    )


                  ],
                )
            ),




          ],
        ),
      ),
    );

  }
}