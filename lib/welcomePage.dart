import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.32,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/signUp1.jpg'),
                  )),
                  child: Column(children: [
                    SizedBox(
                      height: h * 0.16,
                    ),
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/p.jpg'),
                    )
                  ]),
                ),
                const SizedBox(height: 60),
                Container(
                  width: w,
                  margin: const EdgeInsets.only(left: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  width: w * 0.5,
                  height: h * 0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/banner3.jpg'),
                      )),
                  child: const Center(
                    child: Text('Sign out',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                  ),
                ),
                SizedBox(
                  height: w * 0.08,
                ),
              ],
            ),
          ),
        ));
  }
}
