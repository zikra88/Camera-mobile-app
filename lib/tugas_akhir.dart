import 'package:flutter/material.dart';
import 'package:tugas_akhir/pages/profile.dart';
import 'pages/product.dart';
import 'pages/gallery.dart';
import 'pages/aboutpage.dart';
import 'pages/brand_product.dart';
import 'pages/product_detail.dart';
import 'pages/gallery_detail.dart';

void main() {
  runApp(LensoriaApp());
}

class LensoriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: LensoriaHome(),
      routes: {
        '/product': (context) => ProductPage(),
        '/gallery': (context) => GalleryPage(),
        '/about': (context) => AboutPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/brandProduct') {
          final brand = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => BrandProductPage(brand: brand),
          );
        }
        if (settings.name == '/productDetail') {
          final product = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: product),
          );
        }
        if (settings.name == '/galleryDetail') {
          final product = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
            builder: (context) => GalleryDetailPage(product: product),
          );
        }
        return null;
      },
    );
  }
}

class LensoriaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE0B2),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.brown[800]),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        centerTitle: true,
        title: Text(
          'LENSORÍA',
          style: TextStyle(
            fontSize: 25,
            color: Colors.brown[800],
            fontWeight: FontWeight.bold,
            fontFamily: "PlayFair",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyprofilePage())
              );
            },
            icon: Icon(Icons.account_circle, size: 28, color: Colors.brown[800]),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFFFF3E0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFFFF3E0)),
              accountName: Text(
                'Zikra W Rahmadani',
                style: TextStyle(color: Colors.brown[800], fontFamily: "Poppins"),
              ),
              accountEmail: Text(
                'Zikra W Rahmadani@gmail.com',
                style: TextStyle(color: Colors.brown[800],fontFamily: "Poppins"),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/home.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.brown[800]),
              title: Text('Home',style: TextStyle(color: Colors.brown[800]),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store, color: Colors.brown[800]),
              title: Text('My Product',style: TextStyle(color: Colors.brown[800]),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/product');
              },
            ),
            
            ListTile(
              leading: Icon(Icons.photo, color: Colors.brown[800]),
              title: Text('My Gallery',style: TextStyle(color: Colors.brown[800]),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/gallery');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info, color: Colors.brown[800],),
              title: Text('About App',style: TextStyle(color: Colors.brown[800]),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/home.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'Explore Photography',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PlayFair",
                      ),
                    ),
                    Text(
                      'Temukan Kamera',
                      style: TextStyle(
                        color: Color(0xFFFFE0B2),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"
                      ),
                    ),
                    Text(
                      'Impian Anda',
                      style: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Poppins"),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/product');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFE0B2),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Mulai Jelajah',
                        style: TextStyle(
                          color: Colors.brown[800],
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF3E0),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Daftar Brand",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                              color: Colors.brown
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFF3E0)),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        children: List.generate(6, (index) {
                          final imageList = [
                            'images/logo/logo_samsung.webp',
                            'images/logo/logo_sony.png',
                            'images/logo/logo_fujifilm.png',
                            'images/logo/logo_olympus.png',
                            'images/logo/logo_canon.png',
                            'images/logo/logo_nikon.png',
                          ];

                          final brandList = [
                            "Samsung",
                            "Sony",
                            "Fujifilm",
                            "Olympus",
                            "Canon",
                            "Nikon",
                          ];

                          return Card(
                            elevation: 3,
                            color: Color(0xFFFFE0B2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/brandProduct',
                                  arguments: brandList[index],
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    imageList[index],
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    brandList[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: Colors.brown
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
