import 'package:country_app/models/suroo.dart';
import 'package:country_app/utils/colors.dart';
import 'package:country_app/utils/text.dart';
import 'package:flutter/material.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    this.color,
    this.suroo,
  });

  final String name;
  final String icon;
  final Color? color;
  final List<Suroo>? suroo;
}

Continents level1 = const Continents(
  name: AppText.level1,
  icon: 'moscow',
);

Continents level2 = const Continents(
  name: AppText.level2,
  icon: 'india',
);

final europe2 = Continents(
  name: AppText.europa,
  icon: 'europe',
  color: AppColors.europe,
);

Continents europe = Continents(
  name: AppText.europa,
  icon: 'europe',
  color: AppColors.europe,
  suroo: europeQuestion,
);

Continents africa = Continents(
  name: AppText.africa,
  icon: 'africa',
  color: AppColors.africa,
);

Continents asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  color: AppColors.asia,
  suroo: asiaQuestion,
);

Continents northAmerica = Continents(
  name: AppText.north_america,
  icon: 'north_america',
  color: AppColors.northAmerica,
);

Continents southAmerica = Continents(
  name: AppText.south_america,
  icon: 'south_america',
  color: AppColors.southAmerica,
);

Continents australia = Continents(
  name: AppText.australia,
  icon: 'australia',
  color: AppColors.australia,
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
  level1,
  level2,
];
