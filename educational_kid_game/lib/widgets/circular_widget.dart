import 'package:educational_kid_game/pages/profile_page.dart';
import 'package:flutter/material.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({super.key, required this.lock, required this.pathImage,required this.point ,required this.title });
  final bool lock;
  final String? pathImage;
  final String title;
  final int? point;

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>ProfilePage()));
      },
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
      
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
      
                  border: Border.all(
                    width: 10,
                    color: Color.fromRGBO(196, 196, 196, 1),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(114, 191, 199, 1),
                  border: Border.all(color: Colors.white, width: 6),
                ),
                child:
                    lock
                        ? Image.asset(
                          height: 16,
                          width: 16,
                          "assets/images/lock.png",
                        )
                        : Image.asset(height: 42, width: 77, pathImage!),
              ),
              Positioned(
                bottom: 32,
                right: -3,
      
                child: Image.asset(
                  height: 27,
                  width: 31,
                  "assets/images/Vector.png",
                ),
              ),
              lock
                  ? Text("")
                  : Positioned(
                    bottom: 32,
                    right: 8,
                    child: Text(
                      "$point",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
            ],
          ),
          Text(title)
        ],
      ),
    );
  }
}
