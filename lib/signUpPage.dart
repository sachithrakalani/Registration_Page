import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.only(top:24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:w ,
                    height: h * 0.32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/signUp1.jpg'
                        ),  
                      )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: h * 0.16,),
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                            'assets/images/p.jpg'
                          ),
                        )
                      ]),
              ),
              const SizedBox(height: 60),
              
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1,1),
                      color: Colors.grey.withOpacity(0.5)
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email, color: Colors.blue),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0)
                    )
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1,1),
                      color: Colors.grey.withOpacity(0.5)
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.password, color: Colors.blue),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0)
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}