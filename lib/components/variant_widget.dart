import 'package:country_app/models/suroo.dart';
import 'package:flutter/material.dart';

class VariantWidget extends StatelessWidget {
  const VariantWidget({
    Key? key,
    required this.onTap,
    required this.jooptor,
  }) : super(key: key);
  final void Function(bool) onTap;
  final List<Joop> jooptor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 135,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                child: Text(
                  jooptor[index].text,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
