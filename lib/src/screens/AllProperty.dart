import 'package:flutter/material.dart';

class AllProperty extends StatefulWidget {
  const AllProperty({super.key});

  @override
  State<AllProperty> createState() => _AllPropertyState();
}

class _AllPropertyState extends State<AllProperty> {
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
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("ID 234.343A-Hessen",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Container(
                              child: Image(
                                  image: AssetImage('assets/building.png'))),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text("Eigenkapitalrednite",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("9,65%",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Mieteinnahmen",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("€ 20.577,23",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Nachste Wartung",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("24.04.2024",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Spekulations- Zeitraum",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("965",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("darlehensende",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("31.04.2032",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Restdarlehen",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("€ 732.334,34",
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Theoretische Abzahlung",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("€ 732.334,34",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    ));
  }
}
