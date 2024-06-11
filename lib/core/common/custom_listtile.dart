import 'package:flutter/material.dart';

class CustomListLileWidget extends StatelessWidget {
  final String image;
  final String name;
  final String content;
  final String trainlingText;
  final double? radiusCircle;
  final double? headingFontSize;
  final double? traiLingFontSize;
  final double? subTitleFontSize;
  const CustomListLileWidget({super.key, required this.image, required this.name, required this.content, required this.trainlingText, this.radiusCircle=22, this.headingFontSize, this.traiLingFontSize, this.subTitleFontSize});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
        radius: radiusCircle,
      ),
      title: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: headingFontSize??null),),
      subtitle: Text(content),
      trailing: Text(trainlingText),
    );
  }
}
