import 'package:country_app/models/continents.dart';
import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContainentsCard extends StatelessWidget {
  const ContainentsCard({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final Continents item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.white,
        child: Column(
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 22),
            ),
            Expanded(
              child: SvgPicture.asset(
                'assets/icons/${item.icon}.svg',
                color: item.color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
