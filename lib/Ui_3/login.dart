import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  // Variables
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon
              Image.asset('assets/images/nawel.png',
                width: 335,
                height: 336,
              ),

              // Email
              Container(
                width: 350,
                height: 60,
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF4F4F4),
                    focusColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIconColor: Color(0xff000000).withOpacity(0.5),
                    prefixIcon: Icon(Icons.mail_outline),
                    label: Text('Email'),
                    labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                    hintText: 'nawel@gamil.com',
                  ),
                ),
              ),
              SizedBox(height: 15,),

              // Password
              Container(
                width: 350,
                height: 60,
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF4F4F4),
                    focusColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIconColor: Color(0xff000000).withOpacity(0.5),
                    prefixIcon: Icon(Icons.lock_outline),
                    label: Text('password'),
                    labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                    hintText: '1235793mj',
                  ),
                ),
              ),
              SizedBox(height: 20,),

              // Button
              Container(
                width: 361,
                height: 56,
                child: ElevatedButton(onPressed: (){
                  print('login');
                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8900FE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15)
                      )
                  ),
                  child: Text('Login' , style:
                  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                  ),),),
              ),
              SizedBox(height: 10,),

              //Text - create new account
              InkWell(
                onTap: (){
                  print('Go to create account');
                },
                child: Text('Create an account' , style:
                TextStyle(
                    color: Color(0xff1877F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    decorationThickness: 2,
                    decorationColor: Color(0xFF5669FF)
                ),),
              )
            ],
          ),
        )
      ),
    );
  }
} 