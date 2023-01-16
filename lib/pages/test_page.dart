// ignore_for_file: library_private_types_in_public_api

import 'package:country_app/components/appbar_title_widget.dart';
import 'package:country_app/components/sliver_widget.dart';
import 'package:country_app/components/variant_widget.dart';
import 'package:country_app/models/continents.dart';
import 'package:country_app/models/suroo.dart';
import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({
    Key? key,
    required this.suroo,
    required this.item,
  }) : super(key: key);
  final List<Suroo> suroo;

  final Continents item;
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgcolor,
        title: AppbarTitleWidget(
          tuuraJooptor: tuuraJooptor,
          kataJooptor: kataJooptor,
          itam: widget.item,
        ),
      ),
      body: Column(
        children: [
          SliderWidget(value: index),
          const SizedBox(height: 30),
          Text(widget.suroo[index].text, style: const TextStyle(fontSize: 32)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image(
                image: AssetImage(widget.suroo[index].images),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 100),
          VariantWidget(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Тесттин жыйынтыгы'),
                    content: Text(
                      'Туура жооптор: $tuuraJooptor \n Ката жооптор: $kataJooptor',
                      style: const TextStyle(fontSize: 20),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            tuuraJooptor = 0;
                            kataJooptor = 0;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Кайрадан баштоо',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
