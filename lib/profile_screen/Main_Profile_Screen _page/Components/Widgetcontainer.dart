import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget{
  final Widget widget;
  final String text;
  WidgetContainer({super.key,required this.widget, required this.text, });

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Padding(
         padding: const EdgeInsets.all(1),
         child: Container(
           child: ListTile(

             leading: widget,
             title:
                Text(text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),

             trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,size: 20,),


           ),
         ),
       )


     ],
   );
  }
}