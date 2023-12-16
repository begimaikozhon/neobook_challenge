import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/screen/product_list_screen.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Эко маркет',
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          CardWidget(
            nameFoto: '',
            text: 'Фрукты',
          ),
          CardWidget(
            nameFoto: ' (3)',
            text: 'Сухофрукты',
          ),
          CardWidget(
            nameFoto: ' (1)',
            text: 'Овощи',
          ),
          CardWidget(
            nameFoto: ' (4)',
            text: 'Зелень',
          ),
          CardWidget(
            nameFoto: ' (2)',
            text: 'Чай кофе',
          ),
          CardWidget(
            nameFoto: ' (5)',
            text: 'Молочные \nпродукты',
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.nameFoto,
    required this.text,
  });
  final String nameFoto;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductListScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(11, 255, 255, 255)],
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(100),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/image 4$nameFoto.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 10,
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
