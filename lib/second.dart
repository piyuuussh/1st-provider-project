import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:provider_basics/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<int> Num = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<numberlist>(
        builder: (context, numbermodel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  numbermodel.minus();
                },
                child: Icon(Icons.exposure_minus_1_outlined),
              ),
              appBar: AppBar(
                title: Text(
                  "Numbers",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              body: SizedBox(
                child: Column(
                  children: [
                    Text(
                      numbermodel.Num.last.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numbermodel.Num.length,
                      itemBuilder: (context, index) {
                        return Text(
                          " ${numbermodel.Num[index].toString()} ",
                          style: TextStyle(fontSize: 30),
                        );
                      },
                    ))
                  ],
                ),
              ),
            ));
  }
}
