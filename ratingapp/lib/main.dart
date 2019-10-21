import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final titles = ['Bier', 'Film', 'Serie', 'Rezept', ' ... '];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RatingApp',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
            ),
            title: Text('Flutter Rating App'),
          ),
          body: Center(
              child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 4,
                  children: _builder1(),
                ),
              ),
            ],
          )),
        ));
  }
}

List<Widget> _builder1() {
  int itemCount = titles.length;
  List<Widget> ret = [];
  for (var i = 0; i < itemCount; i++) {
    ret.add(
      Card(
        child: InkWell(
          onTap: () {
            print(titles[i] + " tapped");
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text(titles[i]),
            ),
            color: Colors.teal[100],
          ),
        ),
      ),
    );
  }
  return ret;
}