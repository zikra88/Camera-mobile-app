import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App',style: TextStyle(color: Colors.brown[800],fontFamily: "PlayFair", fontSize: 25),),
        backgroundColor: Color(0xFFFFE0B2),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFFFF3E0),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
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
            SizedBox(height: 18),

            Text(
              'Lensoria',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
                letterSpacing: 1.2,
                fontFamily: "Poppins"
              ),
            ),

            SizedBox(height: 24),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFE0B2),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                'Lensoria adalah aplikasi katalog kamera digital dan aksesoris yang memudahkan pengguna melihat detail produk sebelum membeli.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[800], fontFamily: "Poppins"),
              ),
            ),
            SizedBox(height: 28),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              child: Column(
                children: [
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.email,),
                    title: Text('lensoria.app@gmail.com', style:TextStyle(fontFamily: "Poppins") ,),
                  ),
                  Divider(height: 0),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.web, ),
                    title: Text('www.lensoria.com',style:TextStyle(fontFamily: "Poppins") ),
                  ),
                  Divider(height: 0),
                  ListTile(
                    tileColor: Color(0xFFFFE0B2),
                    leading: Icon(Icons.person, ),
                    title: Text('Zikra W Rahmadani', style:TextStyle(fontFamily: "Poppins") ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),
            Divider(),
            SizedBox(height: 12),

            Text(
              '© 2025 Lensoria. All rights reserved.',
              style: TextStyle(fontSize: 14, color: Colors.blueGrey[400]),
            ),
          ],
        ),
      ),
    );
  }
}