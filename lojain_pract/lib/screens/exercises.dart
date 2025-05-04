import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 245, 242, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50, width: 30),
              Row(
                children: [
                  Container(
                    height: 71,
                    width: 410,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(229, 229, 229, 0.8),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 8, 8, 8),
                          child: Text(
                            "Verbal skills",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                          child: SizedBox(
                            height: 27,
                            width: 31,
                            child: SvgPicture.asset(
                              "Assests/images/crown.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(236, 192, 85, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                          child: SizedBox(
                            height: 29,
                            width: 32,
                            child: SvgPicture.asset(
                              "Assests/images/dimod.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "213",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(2, 161, 251, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                height: 128,
                width: 211,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(233, 232, 232, 1),
                  border: Border.all(
                    width: 2.5,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -50,
                      child: SizedBox(
                        height: 98,
                        width: 124,
                        child: Image.asset(
                          "Assests/images/Beep.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 50, width: 30),
                            Text(
                              "Unit 1",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5, width: 10),
                            Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 27,
                                    width: 31,
                                    child: SvgPicture.asset(
                                      "Assests/images/crown.svg",
                                      fit: BoxFit.fill,
                                      alignment: Alignment.bottomRight,
                                    ),
                                  ),

                                  SizedBox(
                                    height: 14,
                                    width: 90,
                                    child: LinearProgressIndicator(
                                      backgroundColor: Color.fromRGBO(
                                        196,
                                        196,
                                        196,
                                        1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                      color: Color.fromRGBO(236, 192, 85, 1),
                                      value: 0.1,
                                    ),
                                  ),
                                  Text(
                                    "3/40",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50, width: 30),
              Stack(
                alignment: AlignmentDirectional.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(114, 191, 199, 1),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      border: Border.all(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        width: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42,
                    width: 77,
                    child: Image.asset(
                      "Assests/images/Hands Pencil 1.png",
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    right: -0.5,
                    child: SizedBox(
                      height: 27,
                      width: 31,
                      child: SvgPicture.asset(
                        "Assests/images/cronwithborder.svg",
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    right: 10,
                    child: Text("1", style: TextStyle(fontSize: 15)),
                  ),
                  Positioned(
                    bottom: -35,
                    child: Text("Intro", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  spacing: 10,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(114, 191, 199, 1),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 64,
                          width: 82,
                          child: Image.asset(
                            "Assests/images/Hands Book.png",
                            fit: BoxFit.fill,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: -0.5,
                          child: SizedBox(
                            height: 27,
                            width: 31,
                            child: SvgPicture.asset(
                              "Assests/images/cronwithborder.svg",
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: 10,
                          child: Text("1", style: TextStyle(fontSize: 15)),
                        ),
                        Positioned(
                          bottom: -35,
                          child: Text(
                            "Phrases",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(114, 191, 199, 1),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 86,
                          child: Image.asset(
                            "Assests/images/Dayflow Bike.png",
                            fit: BoxFit.fill,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: -0.5,
                          child: SizedBox(
                            height: 27,
                            width: 31,
                            child: SvgPicture.asset(
                              "Assests/images/cronwithborder.svg",
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: 10,
                          child: Text("1", style: TextStyle(fontSize: 15)),
                        ),
                        Positioned(
                          bottom: -35,
                          child: Text("Travel", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(114, 191, 199, 1),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      border: Border.all(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        width: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                    width: 30,
                    child: SvgPicture.asset(
                      "Assests/images/lock.svg",
                      fit: BoxFit.fill,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    right: -0.5,
                    child: SizedBox(
                      height: 27,
                      width: 31,
                      child: SvgPicture.asset(
                        "Assests/images/cronwithborder.svg",
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  spacing: 10,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(114, 191, 199, 1),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 38,
                          width: 30,
                          child: SvgPicture.asset(
                            "Assests/images/lock.svg",
                            fit: BoxFit.fill,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: -0.5,
                          child: SizedBox(
                            height: 27,
                            width: 31,
                            child: SvgPicture.asset(
                              "Assests/images/cronwithborder.svg",
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(114, 191, 199, 1),
                          ),
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              width: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 38,
                          width: 30,
                          child: SvgPicture.asset(
                            "Assests/images/lock.svg",
                            fit: BoxFit.fill,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: -0.5,
                          child: SizedBox(
                            height: 27,
                            width: 31,
                            child: SvgPicture.asset(
                              "Assests/images/cronwithborder.svg",
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
