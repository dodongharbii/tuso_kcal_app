import 'package:flutter/material.dart';
import 'package:tuso_kcal_app/faveCategories.dart';

class foodsPage extends StatelessWidget {
  //const foodsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Opacity(
              opacity: 0.30,
              child: Container(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage("assets/salad.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('No Foods Found',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black54,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: Text(
                'You don\'t save any food. Go ahead, search and save your favorite food.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SearchBtn(),
          ],
        ),
      ),
    );
  }
}

class SearchBtn extends StatefulWidget {
  //const SearchBtn({ Key? key }) : super(key: key);

  @override
  _SearchBtnState createState() => _SearchBtnState();
}

class _SearchBtnState extends State<SearchBtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
