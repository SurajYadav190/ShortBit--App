import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetTransation extends StatelessWidget{
  final Widget wiget;
  WidgetTransation({super.key, required this.wiget});


  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       ListTile(
         leading: wiget,
         title: Text("sdnsdsdn"),
         subtitle:Text("dsdsdjdjs"),
         trailing: Row(
           children: [
             Text("sdfsfsf"),
             Text("sdsdjhsdhhds")
           ],
         ),
         
       )
       
     ],
   );
  }}