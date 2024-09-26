import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterspine/main.dart';

class Listpage extends ConsumerStatefulWidget {
  const Listpage({super.key});

  @override
  ConsumerState<Listpage> createState() => _ListpageState();
}

class _ListpageState extends ConsumerState<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Icon(
              Icons.mail,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.add_alert_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: height * 0.04,
            width: width * 0.04,
            color: Colors.red,
          ),
          Expanded( // Expands the ListView to use available space
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('LIST $index'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
