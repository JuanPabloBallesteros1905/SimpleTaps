import 'package:flutter/material.dart';

import '../widgets/banner_widget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;

  void incrementar() {
    number = number + 1;
    setState(() {});
  }

  void reset() {
    number = 0;
    setState(() {});
  }

  void decremento() {
    number = number - 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Simple Taps',
        ),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              shadowColor: const Color.fromARGB(255, 107, 105, 100),
              elevation: 70,
              //Continer principal
              child: Container(

                  color: const Color.fromARGB(255, 239, 239, 208),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Text(
                    '$number',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 70),
                  )),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    incrementar();
                  },
                  child: const Text('+', style: TextStyle(fontSize: 35))),
              ElevatedButton(
                  onPressed: () {
                    reset();
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.restart_alt_outlined),
                      Text('Reset'),
                    ],
                  )),
              ElevatedButton(
                  onPressed: () {
                    decremento();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 35),
                  )),
            ],
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          bannerWidget()
        ],
      ),
    );
  }
}
