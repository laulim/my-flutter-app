import 'package:flutter/material.dart';
import 'package:my_app/widgets/search_button.dart';
import 'package:my_app/services/tmdb.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatToWatch'),
            backgroundColor: Colors.red[900],
            actions: [searchButton(context)],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Whatchlist'),
                Tab(text: 'Seen'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FutureBuilder(
                future: getPopular(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: Text("Loading..."),
                    );
                  }
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text("Error! please check you wifi connection"),
                    );
                  }
                  List popular = snapshot.data["results"];
                  return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(popular[index]["original_title"]),
                          // child: Text(movies[index]),
                        ),
                      );
                    },
                  );
                },
              ),
              // ListView.builder(
              //   padding: const EdgeInsets.all(8),
              //   itemCount: movies.length,
              //   itemBuilder: (context, index) {
              //     return Card(
              //       child: Padding(
              //         padding: const EdgeInsets.all(8),
              //         child: Text(movies[index]),
              //       ),
              //     );
              //   },
              // ),
              const Text('tab2'),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> movies = [
  'Avengers',
  'Hunger Games',
  'Legally Blond',
  'Venom',
  'The Suicide Squad',
];
