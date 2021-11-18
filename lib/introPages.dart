import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tuso_kcal_app/home.dart';

class IntroPages extends StatelessWidget {
  //const IntroPages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              titleWidget: buildTitle('kcal'),
              bodyWidget: buildBody("assets/eating.png", "Eat Healthy",
                  "Maintaining good health should be the primary focus of everyone."),
              footer: ButtonWidget(),
            ),
            PageViewModel(
              titleWidget: buildTitle('kcal'),
              bodyWidget: buildBody("assets/cooking.png", "Healthy Recipes",
                  "Browse thousands of healthy recipes from all over the world"),
              footer: ButtonWidget(),
            ),
            PageViewModel(
              titleWidget: buildTitle('kcal'),
              bodyWidget: buildBody("assets/progress.png", "Track Your Health",
                  "With amazing inbuilt tools you can track your progress."),
              footer: ButtonWidget(),
            ),
          ],
          done: Text('Read',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          onDone: () {},
          showNextButton: false,
          next: Text('Next'),
          dotsDecorator: decorateDots(),
        ),
      );
}

DotsDecorator decorateDots() => DotsDecorator(
      color: Color(0xFFFFCDD2),
      activeColor: Color(0xFFEF9A9A),
      size: Size(15, 15),
      activeSize: Size(25, 15),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );

Widget buildBody(String path, String header, String desc) => Container(
      child: Column(
        children: [
          Image.asset(path, width: 250),
          SizedBox(
            height: 20,
          ),
          Text(
            header,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            desc,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );

Widget buildTitle(String title) => Container(
      child: Text(
        'kcal',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.green,
        ),
        textAlign: TextAlign.center,
      ),
    );

class ButtonWidget extends StatefulWidget {
  //const ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: 300,
            height: 70,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Have An Account?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text('Log In',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ],
          ),
        ],
      );
}

/*Widget buildButton(String buttonName) => Container(
      width: 250,
      height: 80,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.red[200],
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );*/
