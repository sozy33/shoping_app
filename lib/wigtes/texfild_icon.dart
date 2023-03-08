import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home.dart';
import '../pages/login.dart';

class textfild_icon extends StatelessWidget {
  const textfild_icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(
              FeatherIcons.logOut,
              color: Color(0xff000000),
              size: 40,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  hintText: 'Search  products',
                  hintStyle: GoogleFonts.adamina(
                    color: Color(0xff8B8B8B),
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FeatherIcons.search,
                    color: Color(0xff8B8B8B),
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
