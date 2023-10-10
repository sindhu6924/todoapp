import 'package:flutter/material.dart';
class pass extends StatefulWidget {
  const pass({super.key});

  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> {
  final sot=TextEditingController();
  final dot=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: TextField(
                maxLength: 22,
                maxLines: 1,
                controller: sot,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22)
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.password,color: Colors.black,),
                  hintText: "enter new password",

                  suffix: IconButton(onPressed: (){
                    setState(() {
                      print(sot.text);
                    });
                  }, icon: Icon(Icons.done_all)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: TextField(
                controller: dot,
                maxLength: 7,
                maxLines: 1,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22)
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.password,color: Colors.black,),

                  hintText: "confirm password",
                  suffix: IconButton(onPressed: (){
                    setState(() {
                      print(dot.text);
                    });
                  }, icon: Icon(Icons.done_all)),
                ),
              ),
            ),
          ),

          ElevatedButton(onPressed: (){
            if(sot.text.isEmpty||dot.text.isEmpty){
              setState(() {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("please enter the details"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("ok"))
                    ],
                  );
                });
              });
            }
            else if(sot.text!=dot.text){
              setState(() {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Incorrect password"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Try Again"))
                    ],
                  );
                });
              });
            }
             else{
               Navigator.pop(context);
             }
          }, child: Text("submit"))
        ],
      ),
    );
  }
}
