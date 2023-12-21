import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/components/tap_widjet.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List categories = const [
    'Все',
    'Фрукты',
    'Сухофрукты',
    'Овощи',
    'Зелень',
    'Чай кофе',
    'Молочные продукты',
  ];

  List courses = [
    'jjjj',
    'kkkkkk',
    'jjiok,mjk',
    'yyyyyyy',
  ];

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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffF8FAFB),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.grey,
                        size: 40,
                      ),
                      hintText: 'Быстрый поиск',
                      hintStyle: TextStyle(color: AppColors.grey, fontSize: 16),
                      border: InputBorder.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 42,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color:
                                index == 0 ? AppColors.green : AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColors.durkGrey)),
                        child: Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: index == 0
                                    ? AppColors.white
                                    : AppColors.durkGrey),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 350,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Stack(
                      children: [
                        Container(
                          // margin: const EdgeInsets.only(left: 10),
                          // padding: const EdgeInsets.only(
                          //     left: 100, right: 15, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
