import 'package:flutter/material.dart';
import 'util.dart';
import 'const.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List categMenuContainer = [
      ['images/beach_118051.png', "Beach"],
      ['images/1.png', "Forest"],
      ['images/mount.png', "Mountain"],
      ['images/campfire.png', "CampFire"],
      ['images/beach_118051.png', "Beach"],
      ['images/1.png', "Forest"],
      ['images/mount.png', "Mountain"],
      ['images/campfire.png', "CampFire"]
    ];

    final List recomendMenuCards = [
      ['images/hills.jpg', "Kilimanjaro", "🛩️Tanzania"],
      ['images/boat.jpg', "Dal Lake", "🛩️Kashmir"],
      ['images/island.jpg', "Kefolonia island", "🛩️Greece"],
      ['images/f3.jpg', "Amazon Rainforest", "🛩️Brazil"],
    ];

    final List exploreMenuCard = [
      ['images/f4.jpg', "Bandipura", "Karnataka,India"],
      ['images/island.jpg', "Bae islands", "Bali,Thailand"],
      ['images/hills.jpg', "Kilimanjaro", "Tanzania,Europe"],
      ['images/boat.jpg', "Dal Lake", "Kashmir,India"],
      ['images/f4.jpg', "Bandipura", "Karnataka,India"],
      ['images/island.jpg', "Bae islands", "Bali,Thailand"],
      ['images/hills.jpg', "Kilimanjaro", "Tanzania,Europe"],
      ['images/boat.jpg', "Dal Lake", "Kashmir,India"],
      ['images/f4.jpg', "Bandipura", "Karnataka,India"],
      ['images/island.jpg', "Bae islands", "Bali,Thailand"],
      ['images/hills.jpg', "Kilimanjaro", "Tanzania,Europe"],
      ['images/boat.jpg', "Dal Lake", "Kashmir,India"],
    ];

    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.grid_view,
          color: Colors.blue,
        ),
        title: Center(
          child: Text("Bengaluru", style: kprimaryTextStyle),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/p1.png',
                width: 60,
                height: 80,
              )),
        ],
      ),
      body: ListView(
        children: [
          // search box
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search places',
                      prefixIcon: Icon(Icons.search, color: Colors.blue),
                      prefixIconColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.travel_explore_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
// catagory
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Category", style: kprimaryTextStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("See all", style: kseeall_textstyle),
              )
            ],
          ),

          Container(
            height: 120,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return categoryMenuConatiner(
                    catImageurl: categMenuContainer[index][0],
                    catTitle: categMenuContainer[index][1]);
              },
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          ////Recomendations
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Recomended for you", style: kprimaryTextStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("See all", style: kseeall_textstyle),
              )
            ],
          ),

          // RrecomendationCard(),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return RecomendationCard(
                  cardImageurl: recomendMenuCards[index][0],
                  sublocation: recomendMenuCards[index][1],
                  location: recomendMenuCards[index][2],
                );
              }),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Explore More",
              style: kprimaryTextStyle,
            ),
          ),

          Container(
            height: 500,
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: ((context, index) {
                return ExploreCard(
                    imageurl: exploreMenuCard[index][0],
                    place: exploreMenuCard[index][1],
                    country: exploreMenuCard[index][2]);
              }),
            ),
          ),

          // ignore: avoid_unnecessary_containers
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text("UI By Sanjay"),
            ),
          )
        ],
      ),
    );
  }
}
