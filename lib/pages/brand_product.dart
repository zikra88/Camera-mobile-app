import 'package:flutter/material.dart';
import '../data/product_list.dart';

class BrandProductPage extends StatelessWidget {
  final String brand;
  const BrandProductPage({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    final filteredProducts =
        productList.where((product) {
          return product['title']!.toLowerCase().contains(brand.toLowerCase());
        }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$brand Product',style: TextStyle(color: Colors.brown[800],fontFamily: "PlayFair", fontSize: 25),),
        backgroundColor: Color(0xFFFFE0B2),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFFFF3E0),
      body:
          filteredProducts.isEmpty
              ? Center(
                child: Text(
                  'Tidak ada produk untuk brand ini.',
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey[700]),
                ),
              )
              : ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return Card(
                    color: Color(0xFFFFE0B2),
                    elevation: 6,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/productDetail',
                          arguments: product,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                product['image'] ?? '',
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                                errorBuilder:
                                    (context, error, stackTrace) => Icon(
                                      Icons.image_not_supported,
                                      size: 60,
                                    ),
                              ),
                            ),
                            const SizedBox(width: 18),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product['title'] ?? '',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.blueGrey[900],
                                      fontFamily: "PlayFair"
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    product['description'] ?? '',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueGrey[700],
                                      fontFamily: "Poppins"
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    product['rp'] ?? '',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Poppins"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
    );
  }
}
