import 'package:flutter/material.dart';
class homel extends StatefulWidget {
  const homel({super.key});

  @override
  State<homel> createState() => _homelState();
}

class _homelState extends State<homel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image(image: NetworkImage("https://images.ctfassets.net/lzny33ho1g45/why-you-hate-every-to-do-list--p-img/9009eb1091aeb5532a548a0df1650567/file.png?w=1520&fm=jpg&q=30&fit=thumb&h=760")),
      ),
    );
  }
}

