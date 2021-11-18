import 'package:flutter/material.dart';
import 'package:tuso_kcal_app/foodCategory.dart';

class CategoriesPage extends StatefulWidget {
  //const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Favorites',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            automaticallyImplyLeading: false,
            bottom: new PreferredSize(
              preferredSize: new Size(300, 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 300,
                child: new TabBar(
                  unselectedLabelColor: Colors.green[200],
                  indicator: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: [
                    new Container(
                      height: 50,
                      child: Tab(
                        child: Text(
                          'Foods',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    new Container(
                      height: 50,
                      child: Tab(
                        child: Text(
                          'Recipes',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              foodCategory(),
              Center(
                child: Text('Recipes here'),
              ),
            ],
          ),
        ),
      );
}
