import 'package:flutter/material.dart';

import 'custom_navbar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final txtStyle = TextStyle(color: Colors.black54, fontSize: 14);

    List CourseSubTitle = ['3 Golas Today','three by four', '2019-19-4'];
    List coursTitle = ['Positive Rotation', 'Fun Practice', 'Wrong Title Set'];
    List<Icon> CourseIconsData = [
      Icon(
        Icons.add,
        color: Colors.white,
      ),
      Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      Icon(
        Icons.book,
        color: Colors.white,
      ),
    ];
    List<Color> BgColors = [
      Color(0xFFFDD133),
      Color(0xFF64DA91),
      Color(0xFF60C0FC),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Course Page', style: txtTheme.titleLarge),
                  Icon(
                    Icons.post_add,
                    color: Color(0xFF64DA91),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Todays math progress\t',
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    '0min',
                    style: TextStyle(
                      color: Color(0xFF64DA91),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Mathematics',
                    style: txtTheme.titleLarge,
                  ),
                  Text(
                    'English',
                    style: txtStyle,
                  ),
                  Text(
                    'Physics',
                    style: txtStyle,
                  ),
                  Text(
                    'Chemistry',
                    style: txtStyle,
                  ),
                  Text(
                    'GK',
                    style: txtStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xFF64DA91),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.bookmark,
                              color: Color(0xFF64DA91),
                            ),
                          ),
                        ),
                        Text(
                          'Test',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Chapter Knowledge',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Color(0xFF5EBBFD),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.font_download_outlined,
                              color: Color(0xFF64DA91),
                            ),
                          ),
                        ),
                        Text(
                          'Summarize',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Study notes',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Recommended Course',
                style: txtTheme.titleLarge,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'I learned Chapter 6  last time',
                style: txtStyle,
              ),
              SizedBox(
                height: 20,
              ),
              for (var i = 0; i < 3; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: BgColors[i],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: CourseIconsData[i],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            coursTitle[i],
                            style: txtTheme.titleMedium,
                          ),
                          Text(
                            CourseSubTitle[i],
                          ),
                        ],
                      ),
                      SizedBox(

                        height: 20,
                      ),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF178366),
                          borderRadius: BorderRadius.circular(15)


                        ),
                        child: Center(
                          child: Text('Start',
                            style: TextStyle(
                              color: Colors.white


                            ),
                          ),
                          
                          
                        ),


                      )
                    ],
                  ),
                )

            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }

}
