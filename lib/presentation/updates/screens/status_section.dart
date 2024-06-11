import 'package:flutter/material.dart';
import 'package:whats_app/core/const.dart';
import 'package:whats_app/presentation/updates/widget/status_round_image.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:mainPaddingValue,right: mainPaddingValue,top: mainPaddingValue ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const    Text("Status",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Container(
            height: 88,
            // color: Colors.red,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 40,
              itemBuilder: (context, index) =>
              CustomRound(), separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 15,); },),
          )
        ],

      ),
    );
  }
}
