import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutteraassignment/ui/profile_screen.dart';

import '../utils/modify_colors.dart';
import 'alert_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _currentNavIndex = 0;

  final currentScreen = [
    const HomeScreenFinal(),
    const HomeScreenFinal(),
    const AlertScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 20.0,
        selectedColor: Colors.blue,
        strokeColor: const Color(0x30040307),
        unSelectedColor: const Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.home),
            title: Text("Home", style: TextStyle(
                fontSize: 12,
                fontWeight: _currentNavIndex == 0 ? FontWeight.w500 : FontWeight.w300,
                color: _currentNavIndex == 0 ? Colors.blue : Colors.black)
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.scan),
            title: Text("Scan", style: TextStyle(
                fontSize: 12,
                fontWeight: _currentNavIndex == 1 ? FontWeight.w500 : FontWeight.w300,
                color: _currentNavIndex == 1 ? Colors.blue : Colors.black)
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.dangerTriangle),
            title: Text("Alerts", style: TextStyle(
                fontSize: 12,
                fontWeight: _currentNavIndex == 2 ? FontWeight.w500 : FontWeight.w300,
                color: _currentNavIndex == 2 ? Colors.blue : Colors.black)
            ),
          ),
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.user3),
            title: Text("Profile", style: TextStyle(
                fontSize: 12,
                fontWeight: _currentNavIndex == 3 ? FontWeight.w500 : FontWeight.w300,
                color: _currentNavIndex == 3 ? Colors.blue : Colors.black)
            ),
          ),
        ],
        currentIndex: _currentNavIndex,
        onTap: (index) {
          setState(() {
            _currentNavIndex = index;
          });
        },
      ),
      body: currentScreen[_currentNavIndex],
    );

  }
}





class HomeScreenFinal extends StatefulWidget {
  const HomeScreenFinal({Key? key}) : super(key: key);

  @override
  State<HomeScreenFinal> createState() => _HomeScreenFinalState();
}

class _HomeScreenFinalState extends State<HomeScreenFinal> {


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
              height: 60,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: ModifyColors.borderColor
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          headerState = !headerState;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(4)),
                            color: headerState == true ? ModifyColors.bgHeaderColor : ModifyColors.bgHeaderAltColor
                        ),
                        child: const Center(
                            child: Text("Company ABC", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),)
                        ),
                      ),
                    ),
                  ),

                  const VerticalDivider(
                    width: 3,
                    color: ModifyColors.borderColor,
                  ),

                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          headerState = !headerState;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(4)),
                            color: headerState == true ? ModifyColors.bgHeaderAltColor : ModifyColors.bgHeaderColor
                        ),
                        child: const Center(
                            child: Text("HH:SS:MM", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500))
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),


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
                    child: const Text("Face Recognition\nAssignment", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))
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
                        height: 30,
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
                        height: 30,
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


                  ],
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("Zone A", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                            Expanded(child: Container()),

                            const Text("Users", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                          ],
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

                                  const Text("Attendance", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  const Text("255", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

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

                                  const Text("Visitors", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  const Text("912", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

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

                                  const Text("Total Employee", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                  Expanded(child: Container()),

                                  const Text("148018", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

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


