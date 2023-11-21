/* import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Flutter Web',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter Web'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // Wide layout (desktop)
              return WideLayout();
            } else {
              // Narrow layout (mobile)
              return NarrowLayout();
            }
          },
        ),
      ),
    );
  }
}

class WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Center(child: Text('Left')),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Center(child: Text('Center')),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(child: Text('Right')),
        ),
      ],
    );
  }
}

class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Center(child: Text('Top')),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Center(child: Text('Middle')),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(child: Text('Bottom')),
        ),
      ],
    );
  }
}*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Image Stack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        //the main stack for build this section
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            // Image 1
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset(
                'assets/Rectangle.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 400,
                    child: const Text(
                      'Explore my student’s awesome projects.',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 115,
                    child: const Text(
                      'This Website is made for showing my student’s projects with the flexibility of contacting them throw their emails , LinkedIn and so on .',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffDBE2EFB2),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff045FCB)),
                    ),
                    onPressed: () {},
                    child: Container(
                      height: 30,
                      child: const Center(
                        child: Text(
                          'Student’s Projects',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 230,
              top: 20,
              child: Container(
                width: 95,
                height: 28,
                // Image 5
                child: Image.asset(
                  'assets/Vector2.png',
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      // Image 2
                      Image.asset(
                        'assets/Vector.png',
                      ),

                      Positioned(
                        left: 30,
                        bottom: 25,
                        child: Container(
                          width: 100,
                          height: 120,
                          // Image 3
                          child: Image.asset(
                            'assets/Group.png',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 60,
                        child: Container(
                          width: 20,
                          height: 30,
                          // Image 4
                          child: Image.asset(
                            'assets/Group2.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
