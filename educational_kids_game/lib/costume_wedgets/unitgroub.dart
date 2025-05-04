//import packages
import 'package:flutter/material.dart';
//unit group class
class UnitGroup extends StatelessWidget {
  final String title;
  final int starting;
  final int end;
  final Map<String, Map<String, dynamic>> allUnits;
  final Map<String, VoidCallback> unitCallbacks;
// class keys
  const UnitGroup({
    super.key,
    required this.title,
    required this.starting,
    required this.end,
    required this.allUnits,
    required this.unitCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    //get width of screen
    double screenWidth = MediaQuery.sizeOf(context).width;
//start with column
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //make horzintal space
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
          //row has the title and prograss of the title
          child: Row(
            children: [
              Expanded(
                flex: 3,
                //title here
                child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              //prograsses here
              Text('🌟 $starting / $end', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
        //make space
        SizedBox(height: 10),
        SizedBox(
          height: 100,
          //horzintal list view
          child: ListView(
            scrollDirection: Axis.horizontal,
            //define the keys of map
            children: allUnits.entries.map((entry) {
              final name = entry.key;
              final unitData = entry.value;
              final isLocked = unitData['is_locked'] ?? false;
              final unitStart = unitData['startunit'] ?? 0;
              final unitEnd = unitData['endunit'] ?? 0;
              final onpress = unitCallbacks[name];
              final progress = unitEnd > 0 ? unitStart / unitEnd : 0;
// if the unit its locked
              if (isLocked) {
                //container has lock icon
                return Container(
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name, textAlign: TextAlign.center),
                      SizedBox(height: 8),
                      Icon(Icons.lock, size: 30, color: Colors.grey),
                    ],
                  ),
                );
              } else {
                //if the unit not locked 
                return InkWell(
                  onTap: onpress,
                  //container able to press
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //name of unit
                        Text(name, textAlign: TextAlign.center),
                        SizedBox(height: 8),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            // liniar prograses indector
                            LinearProgressIndicator(
                              value: progress,
                              backgroundColor: Colors.yellow[200],
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                            ),
                            //the icon above liniar indector 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Text('🌟', style: TextStyle(fontSize: 18))],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            }).toList(),
          ),
        ),
      ],
    );
  }
}
