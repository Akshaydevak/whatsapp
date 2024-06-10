import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class customTextFormField extends StatefulWidget {
  final  TextEditingController? controller;
  const customTextFormField({super.key,this.controller});

  @override
  State<customTextFormField> createState() => _customTextFormFieldState();
}

class _customTextFormFieldState extends State<customTextFormField> {
  bool isTrue=false;
  FocusNode focusNode=FocusNode();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        focusNode: focusNode,
        style: TextStyle(color: Colors.white),
        controller:widget. controller,
        onChanged: (aksha){
        if(  widget.controller?.text.trim().isNotEmpty==true){

            isTrue=true;

        }else{
          isTrue=false;
        }
        setState(() {

        });
        },
        decoration: InputDecoration(
            fillColor: Colors.grey.withOpacity(.2),
            filled: true,
            hintText: "Search....",
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.5)),

            errorBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)
            ),
            suffixIcon:isTrue?IconButton(icon:Icon( Icons.close),color: Colors.white,onPressed: (){
              widget.controller?.clear();
              isTrue=false;
              setState(() {

              });
            },):null,


            prefixIcon:Icon(Icons.search,color: Colors.grey.withOpacity(.5),),
            // prefix: Icon(Icons.add,color: Colors.grey.withOpacity(.5),),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)),
            disabledBorder :OutlineInputBorder(
                borderRadius: BorderRadius.circular(40)
            ) , focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(40)
        )

        ),
      ),
    );;
  }
}

