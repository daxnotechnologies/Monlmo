import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

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
          padding: const EdgeInsets.all(28.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Wrap(
                      children: [
                        Text("Mein Portfolio ",
                            style: Theme.of(context).textTheme.headlineSmall),
                        InkWell(
                          child: Text("Mehr >",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Container(
                            child:
                                Image(image: AssetImage('assets/building.png')),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text("Eigenkapitalrednite",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              Text("9,65%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Mieteinnahmen",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                              Text("€ 20.577,23",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Annuität gesamt ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text("€ 14.586,56",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text("Darlehen gesamt ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text("€ 1.512.432,33",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Afa Betrag 2022 gesamt ",
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text("€ 210.535,45",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(
                                minimum: 0, maximum: 40, interval: 10),
                            tooltipBehavior: _tooltip,
                            series: <ChartSeries<_ChartData, String>>[
                              ColumnSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data, _) => data.x,
                                  yValueMapper: (_ChartData data, _) => data.y,
                                  name: 'Gold',
                                  color: Color.fromRGBO(8, 142, 255, 1))
                            ]),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
