import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5].map(
          (e) => Image.asset('asset/img/$e.jpeg', fit: BoxFit.cover),
        ).toList(),

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
