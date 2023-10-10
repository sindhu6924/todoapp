import 'package:todoapp/motivate.dart';
import 'package:todoapp/password.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/ddl.dart';
import 'package:flutter/widgets.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mapp(),
    );
  }
}
class mapp extends StatefulWidget {
  const mapp({super.key});

  @override
  State<mapp> createState() => _mappState();
}

class _mappState extends State<mapp> {
  final con=TextEditingController();
  final don=TextEditingController();
  String err="";
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
                controller: con,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22)
                  ),
                  border: InputBorder.none,
                  hintText: "enter your name",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: TextField(
                obscureText: true,
                controller: don,
                maxLength: 7,
                maxLines: 1,
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye,),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22)
                ),
                  prefixIcon: Icon(Icons.password,color: Colors.black,),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal:19),
                  hintText: "enter password",
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("click on?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pass()));
              }, child: Text("forgot password"))
            ],
          ),
          err.length==0?SizedBox(height: 30,):Text("$err",style: TextStyle(color: Colors.red),),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            if(con.text.isEmpty||don.text.isEmpty){
              setState(() {
                err="Enter all the fields";
              });
            }
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>app()));
            }
          }, child: Text("submit"))
        ],
      ),
    );
  }
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>statefull()));
                  }, icon: Icon(Icons.play_circle_fill_outlined,size: 28,)),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("How it",style: TextStyle(
                            color: Colors.black,
                          ),),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("works",style: TextStyle(
                        color: Colors.red,
                      ),),
                    ),
                 ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 59.0),
            child: 
              Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs9MS1-dNcawyxv4t7zS5T9sVc4QdXkTIBNQ&usqp=CAU"),)
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("    Manage Your\nEveryday task list",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 34),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("learn ipsum dolor sit amet, consestetur\n  sadipscing elitr,send diam nanumy \n     Lorem ipsum dolor sit amet.",style: TextStyle(color: Colors.grey),),
          ),
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>done()));
         }, style: ElevatedButton.styleFrom(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
           shadowColor: Colors.orange,
           elevation: 12,
           backgroundColor: Colors.red,
         ),child: Text("Get started",style: TextStyle(
           color: Colors.white,
         ),))
        ],
      ),
    );
  }
}


class done extends StatefulWidget {
  const done({super.key});

  @override
  State<done> createState() => _doneState();
}

class _doneState extends State<done> {
  final key=GlobalKey();
  final allchecked=dat(text: "all checked");
  var li=[dat(text: "check mail"),
    dat(text: "read"),
    dat(text: "write"),
    dat(text: "sleep"),
    dat(text: "many works to do")
  ];
  final control=TextEditingController();
 final lit=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            CircleAvatar(
              radius: 22,
              child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvYTEfGMPXE8LETqwwhkqJG4dy2uA12mI6JRmaIb-tr2CJwIBg1lJz9MWYGLx1Y81jPPQ&usqp=CAU")),
            ),
            Text("your name"),
            Divider(
              thickness: 3,
              height: 2,
            )
          ],
        ),
      ),
      appBar:  AppBar(
          shadowColor: Colors.white,
          elevation: 0,
          backgroundColor:Colors.blueGrey,
          actions: [
            Padding(
                padding: const EdgeInsets.all(11.0),
                child:IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>motive()));
                }, icon: Icon(Icons.auto_awesome_motion_outlined))
            ),
          ]
      ),
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sear(),
            Padding(
              padding: const EdgeInsets.only(left: 22.0,bottom: 5),
              child: Text("All to do's",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context,i){
                  return Column(
                  children: [
                    Container(
                      child:Dismissible(
                        key: ValueKey("${allchecked.text}"),
                        onDismissed: (value){},
                        child: ListTile(
                          onTap:()=>onAllclicked(allchecked),
                          leading:Checkbox(value: allchecked.score, onChanged:(value) =>onAllclicked(allchecked),
                          activeColor: Colors.green,
                            checkColor: Colors.white,
                          ),
                            title:Text(allchecked.text),
                        ),
                      ),
                    ),
                    Divider(),
                    ...li.map((item) =>
                        ListTile(
                          onTap:()=>onAllclicked(item),
                          leading:Checkbox(value: item.score, onChanged:(value) =>onAllclicked(item),
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                          ),
                          title:Text(item.text),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: 34,
                                width: 34,color: Colors.blueGrey,
                                child:
                                IconButton(onPressed: (){
                                  setState(() {
                                    li.remove(item);
                                  });
                                }, icon: Icon(Icons.delete,color: Colors.white,)),

                              ),
                            ),
                          ),
                        ),
                    ).toList()
                  ],
                );
              }
              ),
  ),

            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,bottom: 6),
                        child: SizedBox(
                          height: 89,
                          width: 422,
                          child: Card(
                            elevation: 20,
                            shadowColor: Colors.black87,
                            color: Colors.white,
                            child: TextField(
                              onTap: (){

                              },
                              controller: control,
                              decoration: InputDecoration(
                                hintText: "   add a new task",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FloatingActionButton(onPressed: (){
                          setState(() {
                            li.add(dat(text: control.text));
                          });
                        },child: Icon(Icons.add,color: Colors.white,),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),backgroundColor: Colors.blueGrey,),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  onAllclicked(dat ckbItem){
    setState(() {
      ckbItem.score=! ckbItem.score;
    });
  }

}







class sear extends StatelessWidget {
  sear({super.key});
   final submit=TextEditingController();
   final String="8";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Container(
                color:Colors.white,
                height: 44,
                width: double.infinity,
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  onTap: (){

                  },
                  controller: submit,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      hintText: "search",
                      border: InputBorder.none,
                      suffixIcon: ElevatedButton(onPressed: (){
                        print(submit.text);
                      }, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),child: Icon(Icons.done,))
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class to extends StatelessWidget {
  const  to({super.key});

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        child: ListTile(
          onTap: (){},
          leading: Icon(Icons.check_box_outline_blank),
          tileColor: Colors.white,
          title: Text("search",style: TextStyle(color: Colors.grey),),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 34,
                width: 34,color: Colors.red,
                child:
                   IconButton(onPressed: (){
                  }, icon: Icon(Icons.delete)),

              ),
            ),
          )
        ),
      ),
    );
  }
}



class dat{
  final String text;
  bool score;
  dat({
    required this.text,
    this.score=false,
});

}


class todo extends StatelessWidget {
  todo({super.key});


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            CircleAvatar(
              radius: 22,
              child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvYTEfGMPXE8LETqwwhkqJG4dy2uA12mI6JRmaIb-tr2CJwIBg1lJz9MWYGLx1Y81jPPQ&usqp=CAU")),
            ),
            Text("your name"),
            Divider(
              thickness: 3,
              height: 2,
            )
          ],
        ),
      ),

      body: Column(
        children: [
         sear(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("All to do",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),

                to(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

