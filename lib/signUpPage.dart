import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top:24),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:w ,
                height: h * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/signUp.jpg'
                    ),  
                  )
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      'Sign into your account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
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
                    const SizedBox(height: 20,),
                    Container(
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
                    const SizedBox(height: 25,),
                    Row(
                      children: [
                        Expanded(child:Container(),),
                        const Text(
                          'Forgot your Password?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                          ),
                        )
                      ],
                    )  
                  ]),
              ),
              
            ],
          ),
        ),
      )
    );
  }
}




