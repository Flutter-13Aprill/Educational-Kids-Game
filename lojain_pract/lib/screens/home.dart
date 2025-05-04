import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lojain_pract/screens/exercises.dart';
import 'package:lojain_pract/screens/login.dart';
import 'package:lojain_pract/screens/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    ExercisesScreen(),
    ProfileScreen(),
    HomeScreen(),
    LoginScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
        ],
      ),
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
                          padding: const EdgeInsets.fromLTRB(50, 8, 8, 8),
                          child: SizedBox(
                            height: 29,
                            width: 26,
                            child: SvgPicture.asset(
                              "Assests/images/Vector.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(235, 159, 74, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 8, 8, 8),
                          child: SizedBox(
                            height: 29,
                            width: 26,
                            child: SvgPicture.asset(
                              "Assests/images/box.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "1432 XP",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(51, 143, 155, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
                          child: SizedBox(
                            height: 29,
                            width: 32,
                            child: SvgPicture.asset(
                              "Assests/images/h.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: 16,
                            width: 36,
                            child: SvgPicture.asset(
                              "Assests/images/end.svg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35, width: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Logical reasoning",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 15, width: 15),
                  SizedBox(
                    height: 27,
                    width: 31,
                    child: SvgPicture.asset(
                      "Assests/images/crown.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "18/40",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(196, 196, 196, 0.4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 15, width: 15),
                              Text(
                                "Unit 1",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 125, width: 150),
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
                                      width: 120,
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
                                        value: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 227,
                          width: 179,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(196, 196, 196, 0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 59,
                                width: 47,
                                child: SvgPicture.asset(
                                  "Assests/images/lock.svg",
                                  fit: BoxFit.fill,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35, width: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Artistic thinking",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 38, width: 38),
                  SizedBox(
                    height: 27,
                    width: 31,
                    child: SvgPicture.asset(
                      "Assests/images/crown.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "35/40",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(196, 196, 196, 0.4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 15, width: 15),
                              Text(
                                "Unit 1",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 125, width: 150),
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
                                      width: 120,
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
                                        value: 0.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 227,
                          width: 179,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(196, 196, 196, 0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 59,
                                width: 47,
                                child: SvgPicture.asset(
                                  "Assests/images/lock.svg",
                                  fit: BoxFit.fill,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35, width: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verbal skills",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 30, width: 100),
                  SizedBox(
                    height: 27,
                    width: 31,
                    child: SvgPicture.asset(
                      "Assests/images/crown.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "3/40",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(196, 196, 196, 0.4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 15, width: 15),
                              Text(
                                "Unit 1",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 125, width: 150),
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
                                      width: 120,
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
                                        value: 0.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 227,
                          width: 179,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(196, 196, 196, 0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 59,
                                width: 47,
                                child: SvgPicture.asset(
                                  "Assests/images/lock.svg",
                                  fit: BoxFit.fill,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                            ],
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
