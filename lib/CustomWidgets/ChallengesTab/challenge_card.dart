import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });
  final String title;
  final String description;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromRGBO(251, 245, 242, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.88,
          height: MediaQuery.of(context).size.height * 0.125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1), width: 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 8),
              Image.asset(imagePath, width: 100, height: 100),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text(
                      title,

                      maxLines: 4,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      description,
                      maxLines: 4,
                      softWrap: true,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}
