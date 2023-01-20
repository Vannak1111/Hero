import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Page 01")),
        body: Center(
            child: Container(
          margin: const EdgeInsets.only(top: 100),
          height: 300,
          width: 200,
          child: GestureDetector(
            onTap: () {
              debugPrint("hero");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HeroScreenDetail(),
                ),
              );
            },
            child: Hero(
              tag: 'image',
              child: Image.network(
                  'https://stimg.cardekho.com/images/carexteriorimages/930x620/Jaguar/F-TYPE/7810/1643799635985/front-left-side-47.jpg?tr=w-375'),
            ),
          ),
        )));
  }
}

class HeroScreenDetail extends StatelessWidget {
  const HeroScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 02"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Hero(
                tag: 'image',
                child: Image.network(
                  'https://stimg.cardekho.com/images/carexteriorimages/930x620/Jaguar/F-TYPE/7810/1643799635985/front-left-side-47.jpg?tr=w-375',
                )),
          ),
        ],
      ),
    );
  }
}
