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
              GridView.count(
                childAspectRatio: (1 / 1.5),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: const [
                  GategoryList(
                    image: '1',
                    text: 'Яблоко золотая радуга',
                    price: '56',
                    // onPressed: () {},
                  ),
                  GategoryList(
                    image: '2',
                    text: 'Апельсин',
                    price: '86',
                    // onPressed: () {},
                  ),
                  GategoryList(
                    image: '3',
                    text: 'Драконный фрукт',
                    price: '340',
                    // onPressed: () {},
                  ),
                  GategoryList(
                    image: '1',
                    text: 'Яблоко золотая радуга',
                    price: '56',
                    // onPressed: () {},
                  ),
                  GategoryList(
                    image: '2',
                    text: 'Апельсин',
                    price: '86',
                    // onPressed: () {},
                  ),
                  GategoryList(
                    image: '3',
                    text: 'Драконный фрукт',
                    price: '340',
                    // onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GategoryList extends StatelessWidget {
  const GategoryList({
    super.key,
    required this.image,
    required this.text,
    required this.price,
    this.onPressed,
  });
  final String image;
  final String text;
  final String price;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lifhtGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Image.asset('assets/unsplash_iqIJE3Jo8YM ($image).png'),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 12),
                Text(
                  text,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 12),
                Text(
                  price,
                  style: const TextStyle(
                    color: AppColors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 6),
                const Text(
                  'c',
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 26),
                backgroundColor: AppColors.green,
              ),
              onPressed: onPressed,
              child: const Text(
                'Добавить',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
