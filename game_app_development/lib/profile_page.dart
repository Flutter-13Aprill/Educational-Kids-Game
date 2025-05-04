import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          
          children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      height: 60,
                      width: 426,
                      decoration: BoxDecoration(color:const Color.fromARGB(41, 118, 115, 115),border: Border.all(style: BorderStyle.none) ),
                      child: Padding(padding: EdgeInsets.fromLTRB(160, 8, 25, 8),
                      child:
                      Text('Profile',style: TextStyle(fontSize: 30,),),
                          ))]),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Nidhi Pandya'),
                                subtitle: Text('Nidhi12'),
                              ),
                              Row(
                               children: [
                                SizedBox(width: 12,),
                                Image.asset('icons/clock.png'),
                                SizedBox(width: 5,),
                                Text('Joined March 2022'),
                               ],
                              )
                            ],
                          ),
                        ),
                      ),

                        Expanded(
                          child: Container(
                             width: 80,
                             height: 80,
                             decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                             image: AssetImage('images/girl.jpg'),
                             fit: BoxFit.scaleDown,
                           ),
                 ),
)
                          
                          )
                    ],
                  ),
         Divider(),

                 
                    InkWell(
                      onTap: (){},
                      child: Card(
                     margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                    side: BorderSide(
                    color:Colors.grey.shade300,
                    width: 2 ),
                      borderRadius: BorderRadius.circular(12) ),
                      child:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            children: [
                              SizedBox(width: 20,),
                             Image.asset('icons/party.png',height: 30,width: 30,),
                             SizedBox(width: 10,),
                             Text('Friends updates',style: TextStyle(fontSize: 16),), 
                             SizedBox(width: 140,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                      ),
                      ),
                    ),

                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                     child: Text('Statistics',style: TextStyle(fontSize: 30),),
                   ),
                 
                     Row(
                      children: [
                          Expanded(
                            child: Card(
                               margin: EdgeInsets.all(15),
                                         shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        
                      ),
                      borderRadius: BorderRadius.circular(12),),
                             child: Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Row(
                                children: [
                                  Image.asset('icons/fire.png', height: 30,width: 30,),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text('3', style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                                  Text('Day Streak', style: TextStyle(color: Colors.grey[600]),),]
                                  ),
                                ],
                               ),
                             ),
                            ),
                          ),
                          
 
                       Expanded(
                            child: Card(
                               margin: EdgeInsets.all(15),
                                         shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        
                      ),
                      borderRadius: BorderRadius.circular(12),),
                             child: Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Row(
                                children: [
                                  Image.asset('icons/lighting.png', height: 30,width: 30,),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text('1432'),
                                  Text('Total XP', style: TextStyle(color: Colors.grey[600]),),]
                                  ),
                                ],
                               ),
                             ),
                            ),
                          ),
                      ],
                    ),
                    
                     Row(
                      children: [
                          Expanded(
                            child: Card(
                               margin: EdgeInsets.all(15),
                                         shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        
                      ),
                      borderRadius: BorderRadius.circular(12),),
                             child: Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Row(
                                children: [
                                  Image.asset('icons/madel.png', height: 30,width: 30,),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text('Bronze', style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                                  Text('Current League', style: TextStyle(color: Colors.grey[600]),),]
                                  ),
                                ],
                               ),
                             ),
                            ),
                          ),
                          
 
                       Expanded(
                            child: Card(
                               margin: EdgeInsets.all(15),
                                         shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        
                      ),
                      borderRadius: BorderRadius.circular(12),),
                             child: Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Row(
                                children: [
                                  Image.asset('icons/medeltwo.png', height: 30,width: 30,),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text('0', style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                                  Text('Top 3 Finishes', style: TextStyle(color: Colors.grey[600]),),]
                                  ),
                                ],
                               ),
                             ),
                            ),
                          ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('Friends',style: TextStyle(fontSize: 30),), 
                           TextButton(
                            onPressed: (){},
                             child: Text('ADD FRIENDS'))
                        ],
                      ),
                    ),

             // DefaultTabController manages the state and coordination of the TabBar and TabBarView.
            // It allows switching between different tabs (FOLLOWING and FOLLOWERS).
                   DefaultTabController( 
                          length: 2, 
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 18),
                             child: Container(
                               margin: EdgeInsets.symmetric(vertical: 10),
                               decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                               borderRadius: BorderRadius.circular(12),
                               ),
                              child: Column(
                             children: [
                              TabBar(
                              indicatorColor: Colors.blue,
                              labelColor:Colors.blue ,
                             unselectedLabelColor:Colors.grey ,
                             tabs: [
                             Tab(text: 'FOLLOWING',),
                            Tab(text: 'FOLLOWERS',),
                           ]),

            Divider(height: 1,),
          
          SizedBox(
            height: 130,
            child: TabBarView(
              children: [
               ListView(
                padding: EdgeInsets.all(2),
                children:[
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                    leading: CircleAvatar(child: Text('H',style: TextStyle(color: Colors.white),),backgroundColor: const Color.fromARGB(255, 152, 121, 237),),
                    title: Text('Hardi'),
                    subtitle: Text('4367 XP'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
         
               
               InkWell(
                onTap: (){},
                 child: ListTile(
                    leading: CircleAvatar(child: Text('K',style: TextStyle(color: Colors.white),),backgroundColor: const Color.fromARGB(255, 222, 136, 83),),
                    title: Text('Krishna'),
                    subtitle: Text('2334 XP'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    ),
               ),
                ],
               ),
              Center(child: Text(' No followers yet'),),
             ], ),),
         
         
              ]),
          ),
       ),],),),

              Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('images/Cat.png',fit: BoxFit.cover,),
                              SizedBox(width: 15,),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Text('Invite your friends',),
                                 SizedBox(height: 10,),
                                 Text('Tell your friends it’s',),
                                 Text('free and fun to learn'), 
                                 Text('on Mental up!'),
                                ],
                               ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: Size(340, 40),
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)), 
                              )
                            ),
                            onPressed: (){},
                            child: Text('INVITE FRIENDS', style: TextStyle(color:Colors.white)),
                        ),
                          ],
                      ),
                    ),
                  ),
                        ],  ),
          
        ),
      );
   
  }
}