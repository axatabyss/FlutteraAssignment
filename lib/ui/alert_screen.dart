import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../utils/modify_colors.dart';


class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {


  bool headerState = true;

  Map<int, bool> itemState = {};




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
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


            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                            color: ModifyColors.lightGreyColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              const Text("Alerts", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                              Expanded(child: Container()),

                              const Text("Time", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                            ],
                          )
                      ),

                      Expanded(
                        child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  if (itemState[index] == false) {
                                    itemState[index] = true;
                                  } else {
                                    itemState[index] = false;
                                  }
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  margin: const EdgeInsets.symmetric(vertical: 3),
                                  decoration: BoxDecoration(
                                      color: index.isOdd ? ModifyColors.lightGreyColor : null,
                                      border: itemState[index] == false ?
                                      Border.all(
                                          width: 2,
                                          color: Colors.blue
                                      )
                                          :
                                      null
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      const Text("Alert", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500)),

                                      Expanded(child: Container()),

                                      const Text("HH:MM", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500))

                                    ],
                                  )
                              ),
                            );
                          },
                        ),
                      )


                    ],
                  )
              ),
            ),


          ],
        ),
      ),
    );

  }
}
