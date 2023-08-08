import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movie Apps")),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Now Showing"),
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 3, left: 3),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * .2,
                            "https://cdn.marvel.com/u/prod/marvel/i/mg/b/c0/639a7b035cbaa/clean.jpg"),
                        const Text("data")
                      ],
                    ),
                  );
                },
              ),
            ),
            const Text("Now Showing"),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Text("data");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
