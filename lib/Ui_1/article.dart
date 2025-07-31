import 'package:flutter/material.dart';

class Article_screen extends StatelessWidget{
  // Variable (image - title - publisher)
  final dynamic data ;

  Article_screen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff39A552),
        title: Text('News Title' , style:TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.white
        ),),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back , color: Colors.white, size: 27, )
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),

          // Image
          Container(
            width: double.infinity,
            child: Image.asset(data['image'] ,
            fit: BoxFit.cover,),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.white,
              elevation: 0,
              child:Column(
                children: [
                  // Publisher
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(data['publisher'] , style: TextStyle(
                        color: Color(0xff79828B),
                        fontSize: 12
                    ),),
                  ),

                  // Title
                  Text(
                    data['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff42505C),
                    ),
                  ),

                  SizedBox(height: 20,),

                  // Hour
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('3 hours ago' , style: TextStyle(
                        color: Color(0xff79828B),
                        fontSize: 15
                    ),),
                  ),

                  SizedBox(height: 20,),

                  // Content
                  Text(
                    '''Why are football's biggest clubs starting a new tournament? 
                    Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament? Why are football’s biggest clubs starting a new tournament?''',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff42505C),
                    ),
                    textAlign: TextAlign.justify, // اختياري، عشان النص يكون موزع بشكل مرتب
                  ),

                  SizedBox(height: 20,),

                  // Button to show full content
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){
                      print('Go to full new');
                    }, child:
                    Text('View Full Article  >' , style: TextStyle(
                        color: Color(0xff42505C),
                        fontSize: 15
                    ),),) ,
                  )

                ],
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}