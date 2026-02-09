import 'package:flutter/material.dart';

class GalleryDetailPage extends StatelessWidget {
  final Map<String, String> product;

  const GalleryDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE0B2),
        title: Text(product['title'] ?? 'Photo Detail',style: TextStyle(color: Colors.brown[800], fontFamily: "PlayFair", fontSize: 25), ),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFFFF3E0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    product['image'] ?? '',
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) => Container(
                          width: 200,
                          height: 200,
                          color: Colors.grey[300],
                          child: Icon(Icons.broken_image, size: 100),
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Text(
                product['title'] ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[900],
                  fontFamily: "PlayFair"
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                product['description'] ?? '',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blueGrey[700],
                  height: 1.5,
                  fontFamily: "Poppins"
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                product['rp'] ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Poppins"),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                label: Text('Kembali', style: TextStyle(fontFamily: "Poppins"),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
