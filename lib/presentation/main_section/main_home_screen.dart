import 'package:flutter/material.dart';

import '../../core/const.dart';
import 'widgets/custom_icon_widget.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child:
          AppBArWidget(),

        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

Widget AppBArWidget(){
  return AppBar(
    backgroundColor: Colors.black,
    leadingWidth: 300,

    leading: Container(
        padding: EdgeInsets.only(left: mainPaddingValue),
        child: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
    actions: [
      customIconWidget(Icons.qr_code_scanner,onPress: (){}, ),
      customIconWidget(Icons.camera_alt,onPress: (){}, ),
      customIconWidget(Icons.more_vert,onPress: (){},)

    ],
  );
}