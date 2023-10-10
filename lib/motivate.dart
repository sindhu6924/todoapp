import 'package:flutter/material.dart';
class motive extends StatefulWidget {
  const motive({super.key});

  @override
  State<motive> createState() => _motiveState();
}

class _motiveState extends State<motive> {
  final mot=TextEditingController();
  var lik=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quotes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: lik.length,
              itemBuilder: (context,i) {
              return TextField(
                controller: mot,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22)
                  ),
                  icon: Icon(Icons.support_agent_outlined,color: Colors.black,size: 33,),
                  contentPadding: EdgeInsets.symmetric(horizontal: 33),
                  hintText: "motivate yourself",
                ),
              );
            },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0,bottom: 9),
            child: ElevatedButton(onPressed: (){
             setState(() {
               lik.add(TextEditingController());
             });
            },style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,), child:Text("add more")),
          )
        ],
      ),

    );
  }
}


