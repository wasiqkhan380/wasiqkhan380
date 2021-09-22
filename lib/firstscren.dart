import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusabale_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'Bottombutton.dart';
import 'iconbutton.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
}

class inputpage extends StatefulWidget {
  @override
  _inputpageState createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  Gender selectedGender;
  int height = 180;
  int weight = 20;
  int age = 25;

  // Color malebuttoncolor=inactivecolor;
  // Color femalebuttoncolor=inactivecolor;
  //
  // void updateColour(Gender selectedGender){
  //   if(selectedGender==Gender.male){
  //     if(malebuttoncolor==inactivecolor){
  //       malebuttoncolor=activecolor;
  //       femalebuttoncolor=inactivecolor;
  //     } else {
  //        malebuttoncolor=inactivecolor;
  //     }
  //   }
  //   if(selectedGender==Gender.female){
  //     if(femalebuttoncolor==inactivecolor){
  //       femalebuttoncolor=activecolor;
  //       malebuttoncolor=inactivecolor;
  //       } else  {
  //         femalebuttoncolor=inactivecolor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Center(
            child: Text("BMICalculator"),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: Reuseablecard(
                        colour: selectedGender == Gender.male
                            ? kActivecolor
                            : kInactivecolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.mars,
                          lebel: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: Reuseablecard(
                        colour: selectedGender == Gender.female
                            ? kActivecolor
                            : kInactivecolor,
                        cardchild: Iconcontent(
                          icon: FontAwesomeIcons.venus,
                          lebel: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reuseablecard(
                colour: kInactivecolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Hello",
                      style: kLebeltextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumbertextstyle,
                        ),
                        Text(
                          "cm",
                          style: kLebeltextstyle,
                        ),
                      ],
                    ),
                    Slider(
                      min: 120,
                      max: 220,
                      activeColor: Color(0XFF1D1E33),
                      inactiveColor: Colors.white70,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseablecard(
                    colour: kInactivecolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                        "Weight",
                        style: kLebeltextstyle,),
                        Text(
                          weight.toString(),
                        style: kNumbertextstyle,
                        ) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              color: Colors.black,
                              onpressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                            ),SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              color: Colors.black,
                              onpressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reuseablecard(
                    colour: kInactivecolor,
                    cardchild: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            "AGE",
                            style: kLebeltextstyle),
                        Text(
                          age.toString(),
                          style: kNumbertextstyle,
                        ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         RoundIconButton(
                           icon: FontAwesomeIcons.minus,
                           color: Colors.black,
                           onpressed: (){
                             setState(() {
                               age--;
                             });
                           },

                         ),SizedBox(width: 10.0,
                         ),
                         RoundIconButton(
                           icon: FontAwesomeIcons.plus,
                           color: Colors.black,
                           onpressed: (){
                             setState(() {
                               age++;
                             });
                         },

                         )
                       ],
                     ),


                      ],
                    ),
                  ),
                ),
              ],
            )),
            BottomButton(
              ButtonTitle: "CALCULATOR",
              onTap: (){
                CalculatorBrain calc=CalculatorBrain(height: height,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                   bmiResult:calc.CalculateBMI(),
                resulttext: calc.getResult(),
                interpretation: calc.getInterpretation(),
              ),
              )
              );
            },),

          ],
        ));
  }
}


