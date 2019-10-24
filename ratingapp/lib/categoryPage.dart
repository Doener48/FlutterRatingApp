import 'package:flutter/material.dart';

import 'itemPage.dart';

final titles = ['Bier', 'Film', 'Serie', 'Rezept', ' ... '];

class CategoryPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Rating App'),
          ),
          body: Center(
              child: CustomScrollView(
            semanticChildCount: 5,
            slivers: <Widget>[
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(_createRoute(titles[index]));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Text(titles[index]),
                          ),
                          color: Colors.teal[100],
                        ),
                      ),
                    );
                  },
                  childCount: titles.length,
                ),
              ),
            ],
          )),
        ));
  }
}

Route _createRoute(String title) {
  return MaterialPageRoute(
    builder: (_) => ItemPage(title),
  );
}
