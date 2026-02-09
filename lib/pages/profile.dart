import 'package:flutter/material.dart';

class MyprofilePage extends StatelessWidget {
  const MyprofilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3E0),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE0B2),
        title: Text("MyProfile",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.brown[800],fontFamily: "PlayFair", fontSize: 25)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Material(
                  elevation: 6,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/home.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            child: Column(
              children: [
                Text('Zikra W Rahmadani', style: TextStyle(fontSize: 20,fontFamily: "PlayFair")),
              ],
            ),
          ),
          Text(
            "ZikraWahyudiRahmadani@gmail.com",
            style: TextStyle(color: Colors.grey, fontFamily: "Poppins"),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown,
            ),
            padding: EdgeInsets.all(10),
            child: Text('Edit Foto', style: TextStyle(color: Colors.white, fontFamily: "Poppins")),
          ),
          SizedBox(height: 25),

          Container(
            height: 368,
            width: 350,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.person),
                    title: Text('Username', style: TextStyle(fontSize: 18,fontFamily: "Poppins",)),
                    subtitle: Text(
                      'Zikra W Rahmadani',
                      style: TextStyle(color: Colors.grey,fontFamily: "Poppins",fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Divider(height: 0, color: Colors.black),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.notifications_active),
                    title: Text('Notifications',style: TextStyle(fontFamily: "Poppins",fontSize: 18),),
                    subtitle: Text(
                      'Notification settings',
                      style: TextStyle(color: Colors.grey,fontFamily: "Poppins",fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Divider(height: 0, color: Colors.black),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.shop),
                    title: Text('Cart',style: TextStyle(fontFamily: "Poppins",fontSize:18),),
                    subtitle: Text(
                      'Your cart',
                      style: TextStyle(color: Colors.grey,fontFamily: "Poppins",fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Divider(height: 0, color: Colors.black),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.sunny),
                    title: Text('Night Mode',style: TextStyle(fontFamily: "Poppins",fontSize: 18),),
                    subtitle: Text(
                      'Night mode',
                      style: TextStyle(color: Colors.grey,fontFamily: "Poppins",fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Divider(height: 0, color: Colors.black),
                  ),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.settings),
                    title: Text('Settings',style: TextStyle(fontFamily: "Poppins",fontSize: 18),),
                    subtitle: Text(
                      'Personal Settings',
                      style: TextStyle(color: Colors.grey,fontFamily: "Poppins",fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
