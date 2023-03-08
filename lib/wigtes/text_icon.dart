import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../components/text.dart';

class text_icon extends StatelessWidget {
  const text_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                texts: 'shoping products',
                size: 30,
                weight: FontWeight.bold,
                color: Color(0xff000000),
              ),
              SizedBox(
                height: 10,
              ),
              text(
                texts: '10 Products Found',
                size: 18,
                color: Color(0xff000000),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FeatherIcons.shoppingBag,
              color: Color(0xff000000),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
