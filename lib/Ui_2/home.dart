import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  // Variables
  // New Releases
  List<Map<String, dynamic>> new_releases = [
    {
      'image': 'assets/images/f8b938401308eabc48c30669869eeac8.png',
      'favorite': false
    },
    {
      'image': 'assets/images/img_2.png',
      'favorite': true
    },
    {
      'image': 'assets/images/img_1.png',
      'favorite': false
    },
    {
      'image': 'assets/images/e38d645574a267d62c7320ca51baf6d2.png',
      'favorite': false
    },
    {
      'image': 'assets/images/img_2.png',
      'favorite': true
    },
  ];

  // Recommended
  List<Map<String, dynamic>> recommended = [
    {
      'image': 'assets/images/f8b938401308eabc48c30669869eeac8.png',
      'favorite': false,
      'rating': 4.5,
      'timer': '2h 7m',
    },
    {
      'image': 'assets/images/img_2.png',
      'favorite': true,
      'rating': 3.8,
      'timer': '1h 50m',
    },
    {
      'image': 'assets/images/img_1.png',
      'favorite': false,
      'rating': 4.2,
      'timer': '2h 15m',
    },
    {
      'image': 'assets/images/e38d645574a267d62c7320ca51baf6d2.png',
      'favorite': false,
      'rating': 3.9,
      'timer': '1h 45m',
    },
    {
      'image': 'assets/images/img_2.png',
      'favorite': true,
      'rating': 4.0,
      'timer': '2h 0m',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121312),
      body: SafeArea(
        child: Column(
          children: [
            // Image
            Container(
              width: double.infinity,
              child: Image.asset('assets/images/img.png'),
            ),
            SizedBox(height: 5),

            // Text
            Column(
              children: [
                Text(
                  'Dora and the lost city of gold',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '2019  PG-13  2h 7m',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    color: Color(0xffB5B4B4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // New Releases Section
            Container(
              width: double.infinity,
              height: 187,
              color: Color(0xff282A28),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header (Section)
                    Text(
                      'New Releases',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 8),

                    // Movies List Horizontal
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: new_releases.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 98,
                              child: Stack(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(new_releases[index]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: -1,
                                    child: Icon(
                                      Icons.bookmark,
                                      color: recommended[index]['favorite']
                                          ? Color(0xffF7B539)
                                          : Colors.grey,
                                      size: 37,
                                    ),
                                  ),
                                ],
                              )
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),

            // Recommended Section
            Container(
              width: double.infinity,
              height: 250,
              color: Color(0xff282A28),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header (Section)
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 10),

                    // Movies List Horizontal
                    SizedBox(
                      height: 185,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: new_releases.length,
                        itemBuilder: (context, index) {
                          final item = new_releases[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 100,
                              child: Stack(
                                children: [
                                  Card(
                                    color: Color(0xff343534),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Image
                                        // Image with Bookmark Icon
                                        Stack(
                                          children: [
                                            SizedBox(
                                              height: 100,
                                              width: double.infinity,
                                              child: Image.asset(
                                                item['image'],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              top: -3,
                                              left: -3,
                                              child: Container(
                                                child: Icon(
                                                  Icons.bookmark, // Bookmark icon
                                                  color: item['favorite']
                                                      ? Colors.amber // Yellow if favorite is true
                                                      : Colors.grey, // Grey if favorite is false
                                                  size: 24,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),


                                        // Info.
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '⭐ ${recommended[index]['rating'] ?? '-'}',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.orange[700],
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 2,),

                                              Text(
                                                'Movie Title',  // لو عندك عنوان حطه بدل النص ده
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(height: 2,),

                                              Text(
                                                recommended[index]['timer'] ?? '-',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffB5B4B4),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: -1,
                                    child: Icon(
                                      Icons.bookmark,
                                      color: recommended[index]['favorite']
                                          ? Color(0xffF7B539)
                                          : Colors.grey,
                                      size: 37,
                                    ),
                                  ),
                                ],
                              )
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xff1A1A1A),
      selectedItemColor: Color(0xffFFB224),
      unselectedItemColor: Color(0xffC6C6C6),
        type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home ,size: 27,),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search , size: 27,),
          label: 'Search',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.movie , size: 27,),
          label: 'Browse',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_rounded , size: 27,),
          label: 'Watchlist',
        ),
      ],
    ),
    );
  }
}
