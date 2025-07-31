import 'package:flutter/material.dart';
import 'category.dart';

class Home_screen extends StatelessWidget{
  // Structure
  List <Map<String,dynamic>> Categories = [
    {
      'image' : 'assets/images/bussines.png',
      'color' : Color(0xffCF7E48),
      'title' : 'Business'
    },
    {
      'image' : 'assets/images/environment.png',
      'color' : Color(0xff4882CF),
      'title' : 'Environment'
    },
    {
      'image' : 'assets/images/health.png',
      'color' : Color(0xffED1E79),
      'title' : 'Health'
    },
    {
      'image' : 'assets/images/Politics.png',
      'color' : Color(0xff003E90),
      'title' : 'Politics'
    },
    {
      'image' : 'assets/images/science.png',
      'color' : Color(0xffF2D352),
      'title' : 'Science'
    },
    {
      'image' : 'assets/images/sports.png',
      'color' : Color(0xffC91C22),
      'title' : 'Sports'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white ,size: 27),
        backgroundColor: Color(0xff39A552),
        title: Text('Categories' , style:TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: (){
                  print('Search');
                },
                icon: Icon(Icons.search , color: Colors.white, size: 27, )
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              color: Color(0xff39A552),
              height: 150,
              width: double.infinity,
              child:Center(
                child: Text('News App!' , style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
              ),
            ),

            ListTile(
                leading: Icon(Icons.menu ,color: Color(0xff303030),),
                title:Text('Categories' , style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff303030)
                ),),
                onTap: (){},
              ),

            ListTile(
                leading: Icon(Icons.settings ,color: Color(0xff303030),),
                title:Text('Settings' , style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff303030)
                ),),
              onTap: (){},
              ),
          ],
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Text('Pick your category \nof interest' , style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff4F5A69)
            ),),

            SizedBox(height: 20,),

            // Show Categories
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: Categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20
                    ),
                    itemBuilder: (context , index){
                      bool isFirstColumn = index % 2 == 0;
                      return InkWell(
                        onTap:(){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (c){
                              return Category_screen(data: Categories[index]);
                            })
                          );
                        } ,
                        child: Container(
                          width: 148,
                          height: 175,
                          decoration: BoxDecoration(
                              color: Categories[index]['color'],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: isFirstColumn ? Radius.circular(30) : Radius.zero,
                                bottomRight: isFirstColumn ? Radius.zero : Radius.circular(30),
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Categories[index]['image']),
                              Text( Categories[index]['title'], style:TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

