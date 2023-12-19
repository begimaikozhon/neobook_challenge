import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/components/card_widjet.dart';
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
