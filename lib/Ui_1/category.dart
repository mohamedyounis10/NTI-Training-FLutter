import 'package:flutter/material.dart';
import 'package:session_5/Ui_1/article.dart';

class Category_screen extends StatelessWidget{
  final dynamic data ;

  Category_screen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff39A552),
        title: Text(data['title'] , style:TextStyle(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Taps
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border : BoxBorder.all(
                              color: Color(0xff39A552),
                              width: 2
                            )
                          ),
                          child: Text( 'BBC News',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff39A552),
                            ),
                          ),
                    ),
                  );
                }),
              ),
            ),

            // Space
            SizedBox(height: 10,),

            // News
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.12,
                ),
                children: List.generate(3, (index) {
                  return InkWell(
                    onTap: (){
                      Map <String,dynamic> article_data ={
                          'image' : 'assets/images/_118109970_livreal.png',
                          'publisher' : 'BBC News',
                          'title' : 'Why are football\'s biggest clubs starting a new tournament?'
                      };
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c){
                          return Article_screen(
                            data: article_data
                          );
                        })
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 01,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image
                            ClipRRect(
                              child: Image.asset(
                                'assets/images/_118109970_livreal.png',
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 4),

                            // Publisher
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'BBC News',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff79828B),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),

                            // Title
                            Text(
                              'Why are football\'s biggest clubs starting a new tournament?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff42505C),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}