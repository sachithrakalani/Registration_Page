import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    List images = [
      "g.jpg",
      "t.jpg",
      "f.jpg",
    ];

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

              const SizedBox(height: 40),

              Container(
                width: w * 0.5,
                height: h * 0.09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/banner3.jpg'
                    ),  
                  )
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style:TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    )
                  ),
                ),
              ),

              SizedBox(height: w * 0.08,),

              RichText(
                text: TextSpan(
                  text:"Sign up using following methods",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20
                  ),
                )
             ),

            const SizedBox(height: 20),

             Wrap(
              children: 
                List<Widget>.generate(
                  3,
                   (index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "assets/images/"+images[index]
                          ),
                        ),
                      ),
                    );
                   }
                ),
             ) 
            ],
          ),
        ),
      )
    );
  }
}