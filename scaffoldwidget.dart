/* ******************************************
                 *** START***
****************************************** */

import 'package:flutter/material.dart';

class LScaffoldWidget extends StatefulWidget {
  const LScaffoldWidget({super.key});

  @override
  State<LScaffoldWidget> createState() => _LScaffoldWidgetState();
}

class _LScaffoldWidgetState extends State<LScaffoldWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scaffold'),
        ),
        body: Center(
          child: Text('You have pressed the button $_count times.'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            _count++;
          }),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */