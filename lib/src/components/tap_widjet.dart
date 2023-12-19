import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class TapWidget extends StatelessWidget {
  const TapWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
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
          child: Center(
            child: Text('       $name      '),
          ),
        ),
      ),
    );
  }
}
