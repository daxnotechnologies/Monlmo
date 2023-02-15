import 'package:flutter/material.dart';
import 'package:monlmo/src/common_widgets/reusableTextCard.dart';

class Insurrance extends StatelessWidget {
  const Insurrance({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff07f5d6),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Image(image: AssetImage('assets/monlmo.png')),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.list),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  reusableTextCard("Wohngebeudeversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Haftpflichtversicgerung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard(
                      "Gewesserschaden oder Heizoltankversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Wohngebeudeversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Vers. fur Verwaltungsbeirate",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Hausratversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Berufunfehigkeitsversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextCard("Feuer-Rohrbauversicherung",
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
