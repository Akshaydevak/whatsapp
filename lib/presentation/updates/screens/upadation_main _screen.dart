import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/core/const.dart';
import 'package:whats_app/presentation/updates/screens/status_section.dart';

class updationMainScreen extends StatelessWidget {
  const updationMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height-40,
      // margin: EdgeInsets.all(mainPaddingValue),
      child:  const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusSection(),
            Divider(
              thickness: .5,
              color: Colors.grey,
            ),
            constHeight,


          ],
        ),
      ),
    );
  }
}
