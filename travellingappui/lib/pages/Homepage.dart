import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellingappui/main.dart';
import 'util.dart';
import 'const.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Text("See all",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),

          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryMenuConatiner(
                  catImageurl: 'images/beach_118051.png',
                  catTitle: "Beach",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/1.png',
                  catTitle: "Forest",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/mount.png',
                  catTitle: "Mountain",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/campfire.png',
                  catTitle: "Campfire",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/mount.png',
                  catTitle: "Mountain",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/beach_118051.png',
                  catTitle: "Beach",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/1.png',
                  catTitle: "Forest",
                ),
                categoryMenuConatiner(
                  catImageurl: 'images/campfire.png',
                  catTitle: "Campfire",
                ),
              ],
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
                child: Text("See all",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),

          // RrecomendationCard(),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                RecomendationCard(
                  cardImageurl: 'images/hills.jpg',
                  sublocation: "Kilimanjaro",
                  location: "🛩️Tanzania",
                ),
                RecomendationCard(
                  cardImageurl: 'images/boat.jpg',
                  sublocation: "Dal Lake",
                  location: "🛩️Kashmir",
                ),
                RecomendationCard(
                  cardImageurl: 'images/island.jpg',
                  sublocation: "Kefolonia island",
                  location: "🛩️Greece",
                ),
                RecomendationCard(
                  cardImageurl: 'images/f3.jpg',
                  sublocation: "Amazon RainForest",
                  location: "🛩️Brazil",
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Explore More",
              style: kprimaryTextStyle,
            ),
          ),

          const ExploreCard(
            imageurl: 'images/f4.jpg',
            place: "Bandipura",
            country: "Karnataka,India",
          ),
          const ExploreCard(
            imageurl: 'images/island.jpg',
            place: "Bae islands",
            country: "Bali,ThaiLand",
          ),
          const ExploreCard(
            imageurl: 'images/hills.jpg',
            place: " Kilimanjaro",
            country: "Tanzania,Europe",
          ),
          const ExploreCard(
            imageurl: 'images/boat.jpg',
            place: "Dal Lake",
            country: "Kashmir, India",
          ),

          const SizedBox(
            height: 50,
            // ignore: prefer_const_constructors
            child: Center(
              child: Text("Flutter ui By Sanjay"),
            ),
          )
        ],
      ),
    );
  }
}
