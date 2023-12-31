import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage > 4) {
        nextPage = 0;
      }
      controller.animateToPage(nextPage,
          duration: Duration(milliseconds: 400), curve: Curves.linear);
    });
  }

  @override
  void dispose() {

    if (timer != null) {
      timer!.cancel();
    }

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map(
              (e) => Image.asset('asset/img/$e.jpeg', fit: BoxFit.cover),
            )
            .toList(),

        /*
        children: [
          Image.asset('asset/img/1.jpeg', fit: BoxFit.cover,),
          Image.asset('asset/img/2.jpeg', fit: BoxFit.cover,),
          Image.asset('asset/img/3.jpeg', fit: BoxFit.cover,),
          Image.asset('asset/img/4.jpeg', fit: BoxFit.cover,),
          Image.asset('asset/img/5.jpeg', fit: BoxFit.cover,),
        ],
        이렇게 위처럼 3줄로 간단히 줄일수가 있다구 헌다....
        */
      ),
    );
  }
}
