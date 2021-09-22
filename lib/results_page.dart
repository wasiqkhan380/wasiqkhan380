import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusabale_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Bottombutton.dart';

  class ResultsPage extends StatelessWidget {
    ResultsPage({@required this.bmiResult,@required this.resulttext,@required this.interpretation});

    final String bmiResult;
    final String resulttext;
    final String interpretation;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor:  Color(0XFF1D1E33),
        appBar: AppBar(title: Text("Bmi Caculator"),),
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget>[
           Expanded(
            child:  Container(
             padding: EdgeInsets.all(15.0),
             alignment: Alignment.bottomLeft,
              child: Text("BMI Resuls",
                style: kTitletextstyl,
              ),
            ),
          ),
          Expanded(
              flex:5,
              child:Reuseablecard(
                colour: kInactivecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(bmiResult,
                      style: kResulttextstyle,),
                    Text(resulttext.toUpperCase(),
                      style: kResultNumberstyle,),
                    Text(interpretation,
                      style: kMsgstyle,) ,
                  ],
                ),
              )
          ),
          BottomButton(
            ButtonTitle: "Re-Calculator",
            onTap: (){
              Navigator.pop(context) ;
            },
          ),
        ]
        ),
      );
    }
  }

