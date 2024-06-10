import 'package:flutter/material.dart';
import 'package:whats_app/presentation/main_section/widgets/custome_textformfield.dart';

import '../../core/colors.dart';
import '../../core/const.dart';
import '../chats/screens/main_chat_screen.dart';
import 'widgets/custom_icon_widget.dart';

class MainHomeScreen extends StatelessWidget {
   MainHomeScreen({super.key});
ValueNotifier <int> indexNotifier=ValueNotifier(0);
final listOfScreen=[
  MainChatScreen(),
  Center(child: Text("Updates"),),
  Center(child: Text("Communications"),),
  Center(child: Text("Calls"),),
];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child: Scaffold(
        backgroundColor:Pellete. backgroundcolors,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child:
          AppBArWidget(),

        ),
        body:  ValueListenableBuilder(
          valueListenable:indexNotifier ,
          builder: (BuildContext , int val, _) {
            return listOfScreen[val];
          }
        ),
        bottomNavigationBar:  bottomNavigationBaarWidget(context,ontap: (int index){
          indexNotifier.value=index;
        })

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
Widget bottomNavigationBaarWidget(BuildContext context,{required Function ontap}){
  return  SizedBox(
    height: 100,
    child: Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
          canvasColor: Pellete. backgroundcolors,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.yellow))),
      child: BottomNavigationBar(
        onTap: (index){
          print(index);ontap(index);
        },

        backgroundColor: Colors.black,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.white,),label: "Chats",),
          BottomNavigationBarItem(icon: Icon(Icons.update_sharp,color: Colors.white,),label: "Updates",),
          BottomNavigationBarItem(icon: Icon(Icons.people_outlined,color: Colors.white,),label: "Communications",),
          BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.white,),label: "Calls",)
        ],
      ),
    ),
  );
}