import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const ResponsiveDesignApp());
}

class ResponsiveDesignApp extends StatelessWidget {
  const ResponsiveDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;
    double currentDiagonal = sqrt(pow(currentWidth, 2) + pow(currentHeight, 2));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[getSizeText(currentWidth, currentDiagonal),
          Container(
            width: currentDiagonal*0.2,
            height: currentDiagonal*0.2,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: Text('texto que no se ajusta')),
                
                IconButton(onPressed: (){}, icon: Icon(Icons.add))
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}

getSizeText(currentWidth, currentDiagonal) {
  Text text;
  if (currentWidth < BreakPoints.xsmall) {
    text = Text(
      'Extra Small',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  } else if (currentWidth < BreakPoints.small) {
    text = Text(
      'Small',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  } else if (currentWidth < BreakPoints.medium) {
    text = Text(
      'Medium',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  } else if (currentWidth < BreakPoints.large) {
    text = Text(
      'Large',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  } else if (currentWidth < BreakPoints.xlarge) {
    text = Text(
      'Extra Large',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  } else {
    text = Text(
      'Out of range',
      style: TextStyle(fontSize: currentDiagonal * 0.1),
    );
  }
  return text;
}

class BreakPoints {
  //define a standard sizes
  static const double xsmall = 320.0;
  static const double small = 576.0;
  static const double medium = 768.0;
  static const double large = 992.0;
  static const double xlarge = 1200.0;
}

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 21,
        itemBuilder: (BuildContext context, int index) => Container(
              height: 42,
              color: Colors.deepPurple[600],
              padding: const EdgeInsets.all(13),
              child: Text(
                'Noticia número $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 13,
            ));
  }
}

class HomeBodySmall extends StatelessWidget {
  const HomeBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sumaDeLados = pow(size.width, 2) + pow(size.height, 2);
    var diagonal = sqrt(sumaDeLados) * 0.045;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Responsive Design Small')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Soy un texto algo largo',
                style: TextStyle(
                  fontSize: diagonal,
                ),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  height: 144,
                  color: Colors.deepPurple[200],
                  child: Center(child: Text('Pantalla Pequeña $index')),
                ),
                itemCount: 21,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 13,
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[300],
                child: Row(
                  children: [
                    const Text(
                      'Conoce lo nuevo',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const NewsPage())),
                        child: const Text('Ir'))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Conoce lo nuevo'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: Text('esto es lo nuevo en noticias'),
          ),
          Expanded(child: NewsDetail())
        ]),
      ),
    );
  }
}

class HomeBodyLarge extends StatelessWidget {
  const HomeBodyLarge({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sumaDeLados = pow(size.width, 2) + pow(size.height, 2);
    var diagonal = sqrt(sumaDeLados) * 0.045;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Responsive Design Small')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Soy un texto algo largo',
                      style: TextStyle(
                        fontSize: diagonal,
                      ),
                      // maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Container(
                        height: 144,
                        color: Colors.deepPurple[200],
                        child: Center(child: Text('Pantalla Pequeña $index')),
                      ),
                      itemCount: 21,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        height: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text('Conoce lo nuevo',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 13,
                    ),
                    Expanded(child: NewsDetail())
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget returnedWidget = Container();
    return LayoutBuilder(
      builder: (contex, constraints) {
        if (constraints.maxWidth <= BreakPoints.medium) {
          returnedWidget = const HomeBodySmall();
        } else {
          returnedWidget = const HomeBodyLarge();
        }
        return returnedWidget;
      },
    );
  }
}
