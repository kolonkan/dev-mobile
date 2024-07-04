import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10), 
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius:BorderRadiusDirectional.circular(20),
                  image: DecorationImage(
                    fit:BoxFit.cover,
                    image:NetworkImage(
                      "https://www.bing.com/th?id=OIP.r1wt7GesMEVXofvioGqOGQHaFJ&w=191&h=150&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
                    ),
                    ),
                ),
              ),
              ),
            Padding(
              padding: const EdgeInsets.all(10), 
              child: Image.network(
                "https://www.bing.com/th?id=OIP.r1wt7GesMEVXofvioGqOGQHaFJ&w=191&h=150&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2",
                height: 200,
              ),
        ),
            Image.asset(
              "assets/images/dice-1.png",
              height: 100,
            ),
          ],
          ) ,
          ),
    );
  }
}
