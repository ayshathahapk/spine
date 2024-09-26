import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterspine/main.dart';

import 'fstpage.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,  // Ensure these variables are defined
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/home.jpg"),
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center widgets vertically
            children: [
              Text(
                "Welcome to Home!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // Spacer(),
              Text(" discription \n discription",style: TextStyle(color: Colors.white60),),
              SizedBox(height: 50), // Add space between text and next widget
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                child: Text("Get Started"),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
