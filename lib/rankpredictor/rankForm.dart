import 'package:flutter/material.dart';

class RankCalculator extends StatefulWidget {
  @override
  _RankCalculatorState createState() => _RankCalculatorState();
}

class _RankCalculatorState extends State<RankCalculator> {
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double percentile = 0.0;
  int rank = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey, //key for form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              const Text(
                "Your Rank",
                style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
              ),
              const Text(
                "Predictor",
                style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(

                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      percentile = double.tryParse(value) ?? 0.0;
                    });
                  },
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Percentile'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(100, 40), //////// HERE
                    ),
                    onPressed: () {
                      // Calculate the rank and update the UI
                      setState(() {
                        rank = calculateRank(percentile);
                      });
                    },
                    child: Text('Calculate Rank',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 0.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Your JEE Rank: $rank',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int calculateRank(double percentile) {
    double myRank = 0;
    if (percentile > 100 || percentile < 0) {
      myRank = 0;
    } else if(percentile == 100){
      myRank=1;
    }
    else {
      myRank = (((100 - percentile) * 900000) / 100);
    }
    return myRank.round();
  }
}


