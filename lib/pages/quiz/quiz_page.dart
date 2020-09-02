import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  static const double buttonSize = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                '優れた業績を挙げた生物学者に贈られる\nダーウィンメダルを\n現在，日本人で唯一受賞したのは誰？',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: buttonSize,
                    height: buttonSize,
                    child: RaisedButton(
                      color: Theme.of(context).buttonColor,
                      child: const Text(
                        '利根川進',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () {
                        print('不正解を選択');
                        Navigator.pushNamed(context, '/incorrect');
                      },
                    ),
                  ),
                  SizedBox(
                    width: buttonSize,
                    height: buttonSize,
                    child: RaisedButton(
                      color: Theme.of(context).buttonColor,
                      child: const Text(
                        '木村資生',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () {
                        print('正解を選択');
                        Navigator.pushNamed(context, '/correct');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
