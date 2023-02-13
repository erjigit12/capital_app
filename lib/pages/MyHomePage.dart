// ignore_for_file: file_names, must_be_immutable
import 'package:country_app/app/app.dart';
import 'package:country_app/components/containents_card.dart';
import 'package:country_app/models/continents.dart';
import 'package:country_app/pages/test_page.dart';
import 'package:country_app/utils/colors.dart';
import 'package:country_app/utils/text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.iconBool,
    required this.iconLight,
    required this.icondark,
  }) : super(key: key);
  final bool iconBool;
  final IconData iconLight;
  final IconData icondark;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(height: 100),
              const Text(
                AppText.AppbarTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 115),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.volume_up),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      iconBool = !iconBool;
                    });
                  },
                  child: Icon(iconBool ? iconDark : iconLight),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: GridView.builder(
              controller: ScrollController(initialScrollOffset: 12),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ContainentsCard(
                  item: continents[index],
                  onTap: () {
                    if (continents[index].suroo != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TestPage(
                              suroo: continents[index].suroo!,
                              item: continents[index],
                            );
                          },
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Кечиресиз бул континенттеги суроолор толукталууда!!!'),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
