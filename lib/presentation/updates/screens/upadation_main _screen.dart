import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/common/custom_listtile.dart';
import 'package:whats_app/core/const.dart';
import 'package:whats_app/presentation/updates/screens/status_section.dart';

import '../../../core/common/common_texts.dart';

class updationMainScreen extends StatelessWidget {
   updationMainScreen({super.key});
   ScrollController controller=ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height-40,
      // margin: EdgeInsets.all(mainPaddingValue),
      child:   SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusSection(),
            Divider(
              thickness: .5,
              color: Colors.grey,
            ),
            constHeight,
            Row(
              children: [
                customBoldTex("Channels"),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,))
              ],
            ),
            constHeight,
            ListView.separated(
              controller: controller,
              shrinkWrap: true,
                itemBuilder: (context, index){
                  return  const
                  CustomListLileWidget(image: "https://th.bing.com/th?id=OIP.audMX4ZGbvT2_GJTx2c4GgHaHw&w=244&h=255&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
                    name:"Akshay" ,content:"Hello how do yo" ,trainlingText: "10.30.am",headingFontSize: 19,radiusCircle:30 ,);

                }, separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount:3),


          ],
        ),
      ),
    );
  }
}
