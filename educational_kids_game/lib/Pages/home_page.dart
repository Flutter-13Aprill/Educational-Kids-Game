//import packages & custome wedgets & classes
import 'package:educational_kids_game/costume_wedgets/unitgroub.dart';
import 'package:flutter/material.dart';
import 'package:educational_kids_game/classes/unit_class.dart';
//home page class
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //height and width of screen
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
//start with listview
    return ListView(children: [
      //container that looks like app bar
Container(color: Colors.blueGrey,width: screenWidth, height: screenHeight*0.06,child:
//row have the itams of the container 
Row(children: [
  Padding(padding: EdgeInsets.only(left: screenWidth*0.15),child:
  Text('🔥',style: TextStyle(fontSize:(screenHeight*screenWidth*0.00007) ),) ,),
  Text('4'),
  Padding(padding: EdgeInsets.only(left: screenWidth*0.15),child:
  Icon(Icons.add_box_rounded,color: Colors.black,size:(screenHeight*screenWidth*0.0001)) ,),
  Text('5214 XP'),
  Padding(padding: EdgeInsets.only(left: screenWidth*0.15),child:
  Text('❤',style: TextStyle(fontSize:(screenHeight*screenWidth*0.00007) ),) ,),
  Text('∞') ],),),
  //make space
  SizedBox(height: screenHeight*0.04,),
//units functions
UnitGroup(title: 'Logical reasoning', starting: 3, end: 5, allUnits: {
'Unit 1':{'is_locked':false , 'startunit':3 ,'endunit':5 },
'Unit 2':{'is_locked':false , 'startunit':6 ,'endunit':7},
'Unit 3':{'is_locked':false , 'startunit':7 ,'endunit':9},
'Unit 4':{'is_locked':true , 'startunit':10 ,'endunit':11},
'Unit 5':{'is_locked':true , 'startunit':13 ,'endunit':13}

}
//function thats moved you to the unit details
, unitCallbacks: {
  'Unit 1': () {Navigator.push(context, MaterialPageRoute(builder: (context) => Unit(title: 'Logical reasoning',unit: 'Unit 1',starting:5 ,ending:5 ,)));},
  'Unit 2': () {Navigator.push(context, MaterialPageRoute(builder: (context) => Unit(title: 'Logical reasoning',unit: 'Unit 2',starting:6 ,ending:7 ,)));}
},),


UnitGroup(title: 'Artistic thinking', starting: 1, end: 4, allUnits: {
'Unit 1':{'is_locked':false , 'startunit':5 ,'endunit':10},
'unit2':{'is_locked':true , 'startunit':11 ,'endunit':12},
'unit3':{'is_locked':true , 'startunit':5 ,'endunit':14},
'unit4':{'is_locked':true , 'startunit':17 ,'endunit':17},


},unitCallbacks: {
  'Unit 1': () {Navigator.push(context, MaterialPageRoute(builder: (context) => Unit(title: 'Artistic thinking',unit: 'Unit 1',starting:5 ,ending:10 ,)));}
},),
UnitGroup(title: 'Verbal skills', starting: 2, end: 7, allUnits: {
'Unit 1':{'is_locked':false , 'startunit':7 ,'endunit':20},
'unit2':{'is_locked':false , 'startunit':3 ,'endunit':20},
'unit3':{'is_locked':true , 'startunit':5 ,'endunit':20},
'unit4':{'is_locked':true , 'startunit':5 ,'endunit':20},
'unit5':{'is_locked':true , 'startunit':5 ,'endunit':20},
'unit6':{'is_locked':true , 'startunit':5 ,'endunit':20},
'unit7':{'is_locked':true , 'startunit':5 ,'endunit':20},

},unitCallbacks: {},)


      ],);
      

  }
}