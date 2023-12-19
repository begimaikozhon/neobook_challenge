import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/components/tap_widjet.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final TabController tabController;

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(length: 7, vsync: this.tabController);
  // }
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
                      InkWell(
                        onTap: () {},
                        child: TapWidget(name: 'Все'),
                      ),
                      TapWidget(name: 'Фрукты'),
                      TapWidget(name: 'Сухофрукты'),
                      TapWidget(name: 'Овощи'),
                      TapWidget(name: 'Зелень'),
                      TapWidget(name: 'Чай кофе'),
                      TapWidget(name: 'Молочные продукты'),
                    ],
                  ),
                ),
              ),
              TabBar(controller: tabController, tabs: [
                Tab(
                  text: 'Все',
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
