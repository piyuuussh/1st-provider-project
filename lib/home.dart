import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basics/provider.dart';
import 'package:provider_basics/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<numberlist>(
      builder: ((Context, numbermodel, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numbermodel.add();
            },
            child: Icon(Icons.add),
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
                  itemCount: numbermodel.Num.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbermodel.Num[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                )),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 45,
                    width: 100,
                    child: Text(
                      "Second",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Second()));
                  },
                )
              ],
            ),
          ))),
    );
  }
}
