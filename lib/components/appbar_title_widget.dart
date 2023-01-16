import 'package:country_app/models/continents.dart';
import 'package:country_app/models/suroo.dart';
import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppbarTitleWidget extends StatelessWidget {
  const AppbarTitleWidget({
    Key? key,
    required this.tuuraJooptor,
    required this.kataJooptor,
    required this.itam,
  }) : super(key: key);
  final Continents itam;
  final int tuuraJooptor;
  final int kataJooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
            child: Row(
              children: [
                Text(
                  '$tuuraJooptor',
                  style: const TextStyle(fontSize: 16, color: AppColors.active),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "${asiaQuestion.length}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  '$kataJooptor',
                  style: const TextStyle(fontSize: 16, color: AppColors.red),
                ),
              ],
            ),
          ),
        ),
        Text(
          itam.name,
          style: const TextStyle(fontSize: 22),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.favorite,
                    color: AppColors.red,
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        )
      ],
    );
  }
}
