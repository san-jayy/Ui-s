import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellingappui/pages/const.dart';

///// Ccode for Category Menu Container

class categoryMenuConatiner extends StatelessWidget {
  final String catImageurl, catTitle;

  categoryMenuConatiner({required this.catImageurl, required this.catTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(catImageurl),
            ),
          ),
        ),
        Text(catTitle, style: ksecondaryTextStyle)
      ],
    );
  }
}

/// code for Recomendation Menu Container
class RecomendationCard extends StatelessWidget {
  final String cardImageurl, sublocation, location;
  const RecomendationCard(
      {required this.cardImageurl,
      required this.sublocation,
      required this.location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue[50],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    cardImageurl,
                    height: 150,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(sublocation, style: ksecondaryTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
              child: Text(location, style: ktertiaryTextStyle),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

/// code for Explore Menu Card
class ExploreCard extends StatelessWidget {
  final String imageurl, place, country;
  const ExploreCard(
      {required this.imageurl, required this.place, required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Card(
        shadowColor: Colors.blue[50],
        elevation: 10,
        child: Container(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(imageurl)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(place, style: ksecondaryTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                    child: Text(country, style: ktertiaryTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                    child: Text("⭐ 4.9", style: ktertiaryTextStyle),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("❤️",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.grey[800],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
