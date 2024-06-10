import 'package:flutter/material.dart';
import 'package:whats_app/core/common/custom_icon_container.dart';
import 'package:whats_app/core/const.dart';
import 'package:whats_app/presentation/main_section/widgets/custome_textformfield.dart';

class MainChatScreen extends StatelessWidget {
   MainChatScreen({super.key});
  final TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height-40,
              margin: EdgeInsets.all(mainPaddingValue),
              child: Column(
                children: [
                  customTextFormField(controller:controller),
                  Expanded(
                    child: ListView.separated(
                      // shrinkWrap: true,
                        itemBuilder: (context, index){
                          return  const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://th.bing.com/th?id=OIP.audMX4ZGbvT2_GJTx2c4GgHaHw&w=244&h=255&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                              radius: 22,
                            ),
                            title: Text("Akshay",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            subtitle: Text("Hello how do yo"),
                            trailing: Text("10.30.am"),
                          );

                        }, separatorBuilder: (context, index) => SizedBox(height: 10,), itemCount: 100),
                  )

                ],
              ),
            ),
            Positioned(
              bottom: 205,
              right: 15,
              child:
              CustomRoundCornerIconWidget(icon: Icons.message,onTapFunc: (){
                print("akshay is hre to do");
              },)
            )
          ],
        ),
      ),
    );
  }
}
