import 'package:flutter/material.dart';
import 'package:scouting_app/saveFile.dart';
import 'package:scouting_app/aLotOfVariables.dart';
import 'package:flutter/services.dart';

int numberOfMatches = 0;
bool whateverYouWant = false;

double match1Opacity = 0.0;
double match2Opacity = 0.0;
double match3Opacity = 0.0;
double match4Opacity = 0.0;
double match5Opacity = 0.0;
double match6Opacity = 0.0;
double match7Opacity = 0.0;
double match8Opacity = 0.0;
double match9Opacity = 0.0;
double match10Opacity = 0.0;
double match11Opacity = 0.0;
double match12Opacity = 0.0;
double match13Opacity = 0.0;
double match14Opacity = 0.0;
double match15Opacity = 0.0;
double match16Opacity = 0.0;
double match17Opacity = 0.0;
double match18Opacity = 0.0;
double match19Opacity = 0.0;
double match20Opacity = 0.0;

bool checkValue = false;
bool checkValue2 = false;
bool checkValue3 = false;
bool checkValue4 = false;
bool checkValue5 = false;
bool checkValue6 = false;
bool checkValue7 = false;
bool checkValue8 = false;
bool checkValue9 = false;
bool checkValue10 = false;
bool checkValue11 = false;
bool checkValue12 = false;
bool checkValue13 = false;
bool checkValue14 = false;
bool pickup = false;

int self = 0;
int supported = 0;
int helped = 0;
int helped2 = 0;
int defense = 0;
String fouls;
bool yellow = false;
bool red = false;
String score;
bool successful = false;
int shipCargo;
int shipHatches;

bool firstMove = false;
bool firstMove2 = false;
bool firstMove3 = false;
bool firstMove4 = false;
bool firstMove5 = false;
bool firstMove6 = false;
bool firstMove7 = false;
bool firstMove8 = false;
bool firstMove9 = false;
bool firstMove10 = false;

bool lRocket = false;
bool lRocket2 = false;
bool lRocket3 = false;
bool lRocket4 = false;
bool lRocket5 = false;
bool lRocket6 = false;

bool rRocket = false;
bool rRocket2 = false;
bool rRocket3 = false;
bool rRocket4 = false;
bool rRocket5 = false;
bool rRocket6 = false;

String colour1;
String colour2;
String colour3;
String colour4;
String colour5;
String colour6;

String text;
String text2;
String text3;

String lRocketText;
String lRocketText2;
String lRocketText3;

String rRocketText;
String rRocketText2;
String rRocketText3;

String rocketT;
String rocketT2;
String rocketT3;
String rocketT4;
String rocketT5;
String rocketT6;

String nullHatches;

bool redCard = false;
bool yellowCard = false;
bool redCard2;
bool yellowCard2;

int rRocketCargo = 0;
int rRocketCargo2 = 0;
int rRocketCargo3 = 0;

int lRocketCargo = 0;
int lRocketCargo2 = 0;
int lRocketCargo3 = 0;

int hatchPannels = 0;
int cargo = 0;
int hatchPannelsteliop = 0;
int cargoteliop = 0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    readCounter();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Scouting App 2020',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  final String title = 'Scouting App';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color c = new Color.fromARGB(100, 156, 39, 39);
CrossFadeState state=CrossFadeState.showSecond;
@override
void initState(){
  Future.delayed(Duration(seconds: 2),()=>setState((){state=CrossFadeState.showFirst;}));
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: Duration(milliseconds: 500),
      crossFadeState: state,
      secondChild: Splash(),
      firstChild: Scaffold(
        backgroundColor: Colors.grey[600],
        body: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.cyan,
                    Colors.red,
                  ]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage("assets/logo.png"), width: 150, height: 150,),

                new Opacity(
                  opacity: 0.0,
                  child: RaisedButton(onPressed: null),
                ),
                
                ButtonTheme(
                  minWidth: 200.0,
                  height: 75.0,
                  child: RaisedButton(
                      child: Text('View Data Sheet', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreateMatch())
                        );
                      },
                      color: Colors.indigo[900]
                  ),
                ),

                RaisedButton(
                    child: Text(
                      'Help',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpPage())
                      ) ;
                    },
                    color: Colors.indigo[900]
                ),
                FlatButton(
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 5.0),
                    ),
                    onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context)=>Wizard())
                     );
                    }
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class Wizard extends StatefulWidget{

  @override
  WizardState createState() => WizardState();
}

class WizardState extends State<Wizard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Willie The Wizard'),
      ),
      body:  SizedBox(
        width: 400,
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image:   AssetImage("assets/WillieTheWizard.bmp")
                )
            )
        ),
      ),

      );

  }
}


class CreateMatch extends StatefulWidget{
  final String title = 'Create Match';

  @override
  MatchPageState createState() => MatchPageState();
}

class MatchPageState extends State<CreateMatch>{
  RaisedButton btn1 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber1));
  RaisedButton btn2 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber2));
  RaisedButton btn3 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber3));
  RaisedButton btn4 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber4));
  RaisedButton btn5 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber5));
  RaisedButton btn6 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber6));
  RaisedButton btn7 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber7));
  RaisedButton btn8 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber8));
  RaisedButton btn9 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber9));
  RaisedButton btn10 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber10));
  RaisedButton btn11 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber11));
  RaisedButton btn12 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber12));
  RaisedButton btn13 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber13));
  RaisedButton btn14 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber14));
  RaisedButton btn15 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber15));
  RaisedButton btn16 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber16));
  RaisedButton btn17 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber17));
  RaisedButton btn18 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber18));
  RaisedButton btn19 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber19));
  RaisedButton btn20 = new RaisedButton(onPressed: null, color: Color.fromARGB(0, 100, 100, 100), child: new Text(matchNumber20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Your Data Sheet'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.grey,
                      Colors.cyan,
                    ]
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: new InputDecoration(labelText: 'Your first and last name...'),
                  onChanged: (name) {
                    sheetName = name.replaceAll(" ", "");
                  },
                ),
                Center(
                  child: RaisedButton(
                      child: Text(
                        'Add Data',
                      ),
                      onPressed: () {
                        setState(() {
                          numberOfMatches++;
                          if (numberOfMatches == 1){
                            match1Opacity = 1.0;
                          }else if (numberOfMatches == 2){
                            match2Opacity = 1.0;
                          }else if (numberOfMatches == 3){
                            match3Opacity = 1.0;
                          }else if (numberOfMatches == 4){
                            match4Opacity = 1.0;
                          }else if (numberOfMatches == 5){
                            match5Opacity = 1.0;
                          }else if (numberOfMatches == 6){
                            match6Opacity = 1.0;
                          }else if (numberOfMatches == 7){
                            match7Opacity = 1.0;
                          }else if (numberOfMatches == 8){
                            match8Opacity = 1.0;
                          }else if (numberOfMatches == 9){
                            match9Opacity = 1.0;
                          }else if (numberOfMatches == 10){
                            match10Opacity = 1.0;
                          }else if (numberOfMatches == 11){
                            match11Opacity = 1.0;
                          }else if (numberOfMatches == 12){
                            match12Opacity = 1.0;
                          }else if (numberOfMatches == 13){
                            match13Opacity = 1.0;
                          }else if (numberOfMatches == 14){
                            match14Opacity = 1.0;
                          }else if (numberOfMatches == 15){
                            match15Opacity = 1.0;
                          }else if (numberOfMatches == 16){
                            match16Opacity = 1.0;
                          }else if (numberOfMatches == 17){
                            match17Opacity = 1.0;
                          }else if (numberOfMatches == 18){
                            match18Opacity = 1.0;
                          }else if (numberOfMatches == 19){
                            match19Opacity = 1.0;
                          }else if (numberOfMatches == 20){
                            match20Opacity = 1.0;
                          }
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Team())
                        ) ;
                      }
                  ),
                ),
                Center(
                    child: RaisedButton(
                        child: new Text('Upload Data'),
                        onPressed: (){
                          showAlertDialog(context);
                        }
                    )
                ),

                new Opacity(opacity: match1Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn1),
                )),
                new Opacity(opacity: match2Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn2),
                )),
                new Opacity(opacity: match3Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn3),
                )),
                new Opacity(opacity: match4Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn4),
                )),
                new Opacity(opacity: match5Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn5),
                )),
                new Opacity(opacity: match6Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn6),
                )),
                new Opacity(opacity: match7Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn7),
                )),
                new Opacity(opacity: match8Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn8),
                )),
                new Opacity(opacity: match9Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn9),
                )),
                new Opacity(opacity: match10Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn10),
                )),
                new Opacity(opacity: match11Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn11),
                )),
                new Opacity(opacity: match12Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn12),
                )),
                new Opacity(opacity: match13Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn13),
                )),
                new Opacity(opacity: match14Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn14),
                )),
                new Opacity(opacity: match15Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn15),
                )),
                new Opacity(opacity: match16Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn16),
                )),
                new Opacity(opacity: match17Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn17),
                )),
                new Opacity(opacity: match18Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn18),
                )),
                new Opacity(opacity: match19Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn19),
                )),
                new Opacity(opacity: match20Opacity, child: new Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Center(child: btn20),
                )),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class HelpPage extends StatefulWidget{
  final String title = 'Help';

  @override
  HelpPageState createState() => HelpPageState();
}

class HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'For each match, use the New Match button to create a new match data table. Next, enter data for each of the teams competing in the match. Press export to choose where to put the newly-formed Excel file. Thanks for using the app!\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
RaisedButton(
child: Text(
'Thank you app, very cool!',
style: TextStyle(color: Colors.white)),
onPressed: () {
Navigator.pop(
context
);
},
color: Colors.indigo[900],
),
],
),
),
);
}
}

class Splash extends StatefulWidget{

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: new AssetImage("assets/splash.jpg"),
                fit: BoxFit.cover,
              ),
            )
        )
    );
  }
}

class Team extends StatefulWidget{

  @override
  TeamState createState() => TeamState();
}

class TeamState extends State<Team>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
        appBar: AppBar(
          title: Text('Pregame'),
        ),
        body: new Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: new InputDecoration(
                          labelText: 'Match Number'
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          if (numberOfMatches == 1){
                            matchNumber1 = text;
                          }else if (numberOfMatches == 2){
                            matchNumber2 = text;
                          }else if (numberOfMatches == 3){
                            matchNumber3 = text;
                          }else if (numberOfMatches == 4){
                            matchNumber4 = text;
                          }else if (numberOfMatches == 5){
                            matchNumber5 = text;
                          }else if (numberOfMatches == 6){
                            matchNumber6 = text;
                          }else if (numberOfMatches == 7){
                            matchNumber7 = text;
                          }else if (numberOfMatches == 8){
                            matchNumber8 = text;
                          }else if (numberOfMatches == 9){
                            matchNumber9 = text;
                          }else if (numberOfMatches == 10){
                            matchNumber10 = text;
                          }else if (numberOfMatches == 11){
                            matchNumber11 = text;
                          }else if (numberOfMatches == 12){
                            matchNumber12 = text;
                          }else if (numberOfMatches == 13){
                            matchNumber13 = text;
                          }else if (numberOfMatches == 14){
                            matchNumber14 = text;
                          }else if (numberOfMatches == 15){
                            matchNumber15 = text;
                          }else if (numberOfMatches == 16){
                            matchNumber16 = text;
                          }else if (numberOfMatches == 17){
                            matchNumber17 = text;
                          }else if (numberOfMatches == 18){
                            matchNumber18 = text;
                          }else if (numberOfMatches == 19){
                            matchNumber19 = text;
                          }else if (numberOfMatches == 20){
                            matchNumber20 = text;
                          }
                          
                        });
                      },
                    ),

                    TextField(
                      decoration: new InputDecoration(
                          labelText: 'Team Number'
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          if (numberOfMatches == 1){
                            teamNumber1 = text;
                          }else if (numberOfMatches == 2){
                            teamNumber2 = text;
                          }else if (numberOfMatches == 3){
                            teamNumber3 = text;
                          }else if (numberOfMatches == 4){
                            teamNumber4 = text;
                          }else if (numberOfMatches == 5){
                            teamNumber5 = text;
                          }else if (numberOfMatches == 6){
                            teamNumber6 = text;
                          }else if (numberOfMatches == 7){
                            teamNumber7 = text;
                          }else if (numberOfMatches == 8){
                            teamNumber8 = text;
                          }else if (numberOfMatches == 9){
                            teamNumber9 = text;
                          }else if (numberOfMatches == 10){
                            teamNumber10 = text;
                          }else if (numberOfMatches == 11){
                            teamNumber11 = text;
                          }else if (numberOfMatches == 12){
                            teamNumber12 = text;
                          }else if (numberOfMatches == 13){
                            teamNumber13 = text;
                          }else if (numberOfMatches == 14){
                            teamNumber14 = text;
                          }else if (numberOfMatches == 15){
                            teamNumber15 = text;
                          }else if (numberOfMatches == 16){
                            teamNumber16 = text;
                          }else if (numberOfMatches == 17){
                            teamNumber17 = text;
                          }else if (numberOfMatches == 18){
                            teamNumber18 = text;
                          }else if (numberOfMatches == 19){
                            teamNumber19 = text;
                          }else if (numberOfMatches == 20){
                            teamNumber20 = text;
                          }

                        });
                      },
                    ),

                    CheckboxListTile(
                      value: checkValue3,
                      title: new Text('Red Alliance?'),
                      activeColor: Colors.red[600],
                      onChanged: (bool changed3) {
                        setState(() {
                          checkValue3 = changed3;
                          checkValue4 = !changed3;
                        });
                      },
                    ),

                    CheckboxListTile(
                        value: checkValue4,
                        title: new Text('Blue Alliance?'),
                        activeColor: Colors.blue[600],
                        onChanged: (bool changed4) {
                          setState(() {
                            checkValue4 = changed4;
                            checkValue3 = !changed4;  //stops user from pressing both red and blue
                          });
                        }
                    ),

                    Align(
                        alignment: Alignment.bottomCenter,
                        child: new RaisedButton(
                            onPressed: () {
                              addTeamInfo();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Finished())
                              );
                              //TODO: Point to existing screen (when you have one)
                              //Right now, this takes the user straight to the end.
                            },
                          color: Colors.blue[800],
                          child: Text('Next', style: TextStyle(color: Colors.white),),
                        )
                    ),
                  ],
                ),
              )
          ),
    );
  }
}

void addTeamInfo(){
  addData(0,numberOfMatches,text);
  addData(1,numberOfMatches, numberOfMatches.toString());

  if (checkValue3==true&&checkValue4==false){
    addData(2,numberOfMatches,'red');
  }else if(checkValue4==true&&checkValue3==false){
    addData(2,numberOfMatches,'blue');
  }


  if (checkValue8==true){
    addData(3,numberOfMatches,'11');
  }else if(checkValue9==true){
    addData(3,numberOfMatches,'12');
  }else if(checkValue10==true){
    addData(3,numberOfMatches,'13');
  }else if(checkValue11==true){
    addData(3,numberOfMatches,'21');
  }else if(checkValue12==true){
    addData(3,numberOfMatches,'23');
  }
}

class Finished extends StatefulWidget{

  @override
  FinishedState createState() => FinishedState();
}

class FinishedState extends State<Finished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Right Rocket'),
        ),
        body: new Center(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      Text('Thanks for scouting!', style: TextStyle(fontSize: 32),),

                      Text('Your data has been uploaded to the database. Thanks\nfor your help!', textAlign: TextAlign.center,),
                      RaisedButton(
                        color: Colors.green,
                        child: Text('Home'),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyHomePage())
                            );
                          }
                      )
                    ]
                )
            )
        )
    );
  }
}


showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("No, take me back!"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Yes, go away."),
    onPressed:  () {
      writeFile();
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Finished())
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Wait..."),
    content: Text("Are you absolutely sure you want to upload this data sheet? Remember, this is for marks, and accurate data heavily benefits our team's success."),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
