import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text extends StatelessWidget {
  String? texts;
  double? size;
  Color? color;
  FontWeight? weight;
  TextStyle googleFonts = GoogleFonts.adamina();

  text({super.key, this.texts, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        texts!,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}
