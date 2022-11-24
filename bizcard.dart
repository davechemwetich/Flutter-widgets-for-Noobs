import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyBizCard')),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Colors.grey,
            Colors.green,
            Colors.black26,
            Colors.lightBlue,
            Colors.lightBlue,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   ],
          // )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: const DecorationImage(
              image: NetworkImage("https://picsum.photos/200/200"),
              fit: BoxFit.cover)),
    );
  }
}
