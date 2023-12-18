import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Продукты',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.search,
                      color: AppColors.grey,
                      size: 40,
                    ),
                  ),
                  hintText: 'Быстрый поиск',
                  hintStyle: TextStyle(color: AppColors.grey, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.durkGrey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  )),
                              child: const Center(
                                child: Text('     Все    '),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text('Фрукты'),
                      const Text('Сухофрукты'),
                      const Text('Овощи'),
                      const Text('Зелень'),
                      const Text('Чай кофе'),
                      const Text('Молочные продукты'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
