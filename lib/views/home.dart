import 'package:clube_do_filme/views/em_alta.dart';
import 'package:clube_do_filme/views/ranks.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final pageViewController = PageController();

  @override
  // ignore: must_call_super
  Future<void> dispose() {
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: PageView(
        controller: pageViewController,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Text('Tela Principal'),
          ),
          Ranks(),
          EmAlta(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController?.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Início',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_half),
                  label: 'Ranks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_fire_department), //trocar esta MIERDA
                  label: 'Em Alta',
                ),
              ],
            );
          }),
    );
  }
}
