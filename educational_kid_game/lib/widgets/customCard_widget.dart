import 'package:flutter/material.dart';

class CustomcardWidget extends StatelessWidget {
  const CustomcardWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 211,
      height: 150,
      clipBehavior: Clip.none,
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(196, 196, 196, 0.4),

          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(20),

        color: Color.fromRGBO(233, 232, 232, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Text(title, style: TextStyle(fontSize: 30)),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 19),
                height: 27,
                width: 31,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Vector.png"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 8),
                  width: 149,
                  height: 14,
                  child: LinearProgressIndicator(
                    value: 0.5,
                    color: Color.fromRGBO(236, 192, 85, 1),
                    backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
