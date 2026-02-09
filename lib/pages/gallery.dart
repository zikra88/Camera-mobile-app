import 'package:flutter/material.dart';
import '../data/gallery_list.dart';
import '../data/product_list.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE0B2),
        title: Text('My Gallery',style: TextStyle(color: Colors.brown[800], fontFamily: "PlayFair", fontSize: 25),),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFFFF3E0),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 14,
          mainAxisSpacing: 14,
        ),
        itemCount: galleryList.length,
        itemBuilder: (context, index) {
          final imageUrl = galleryList[index];
          return Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(14),
            child: InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () {
                final imageUrl = galleryList[index];
                final product = productList.firstWhere(
                  (p) => p['image'] == imageUrl,
                  orElse:
                      () => {
                        'title': 'Tidak diketahui',
                        'description': 'Deskripsi tidak tersedia.',
                        'image': imageUrl,
                      },
                );
                Navigator.pushNamed(
                  context,
                  '/galleryDetail',
                  arguments: product,
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Hero(
                  tag: imageUrl,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) => Container(
                          color: Colors.grey[300],
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                            size: 40,
                          ),
                        ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
