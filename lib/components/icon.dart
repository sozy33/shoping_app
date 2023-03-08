import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class icon extends StatelessWidget {
final IconData? icons;
  final double? size;
  final VoidCallback? onTap;
  //font weight
  

  final Color? color;
   icon({super.key, this.icons, this.size, this.color,this.onTap, });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:IconButton(
        onPressed: onTap,
       icon: Icon(icons,
        size: size,
         color: color,
         
        
         )),
    ); 
      
    
  }
}