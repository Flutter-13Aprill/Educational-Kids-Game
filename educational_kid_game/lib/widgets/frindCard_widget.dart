import 'package:flutter/material.dart';

class FrindcardWidget extends StatelessWidget {
  const FrindcardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 26, right: 26),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Friends",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 105),

              Text(
                "ADD FRIENDS",
                style: TextStyle(
                  fontSize: 20,

                  color: Color.fromRGBO(2, 161, 251, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(229, 229, 229, 0.8),
                width: 3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: Color.fromRGBO(2, 161, 251, 1),
                          width: 3,
                        ),
                      ),
                    ),
                    child: Text(
                      "FOLLOWING",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(2, 161, 251, 1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: Color.fromRGBO(229, 229, 229, 0.8),
                          width: 3,
                        ),
                      ),
                    ),
                    child: Text(
                      "FOLLOWERS",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(229, 229, 229, 0.8),
                width: 3,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      bottom: BorderSide(
                        color: Color.fromRGBO(229, 229, 229, 0.8),
                        width: 3,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(171, 112, 223, 1),
                        ),
                        width: 31,
                        height: 31,
                        child: Text(
                          "H",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Column(
                        children: [
                          Text("Hardi", style: TextStyle(fontSize: 20)),
                          Text(
                            "4367 XP",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 212),
                      Icon(
                        Icons.arrow_forward_ios,
                        weight: 9,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(223, 112, 112, 1),
                      ),
                      width: 31,
                      height: 31,
                      child: Text(
                        "K",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Column(
                      children: [
                        Text("Krishna", style: TextStyle(fontSize: 20)),
                        Text(
                          "2334 XP",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 212),
                    Icon(
                      Icons.arrow_forward_ios,
                      weight: 9,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
