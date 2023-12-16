import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Продукты',
          style: TextStyle(fontWeight: FontWeight.w500),
          
        ),
        actions: [
          
        ],
      ),
    );
  }
}
