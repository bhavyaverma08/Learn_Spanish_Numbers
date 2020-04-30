import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer= AudioCache();

  List<NumberAudio> numberList =[
    NumberAudio("one.wav", Colors.orange,"UNO (One)"),
    NumberAudio("two.wav", Colors.lightGreen,"DOS (Two)"),
    NumberAudio("three.wav", Colors.lightGreen,"TRES (Three)"),
    NumberAudio("four.wav", Colors.orange,"CUATRO (Four)"),
    NumberAudio("five.wav", Colors.orange,"CINCO (Five)"),
    NumberAudio("six.wav", Colors.lightGreen,"SIES (Six)"),
    NumberAudio("seven.wav", Colors.lightGreen,"SEITE (Seven)"),
    NumberAudio("eight.wav", Colors.orange,"OCHO (Eight)"),
    NumberAudio("nine.wav", Colors.orange,"NUEVE (Nine)"),
    NumberAudio("ten.wav", Colors.lightGreen,"DEIT (Ten)"),

  ];

  play(String uri){
    audioPlayer.play(uri);
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Learn Spanish Numbers',textAlign: TextAlign.center,),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(10.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:2,
                      childAspectRatio: 2.0,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0
                    ),
                    itemCount: numberList.length,
                    itemBuilder: (context,i)=>SizedBox(
                      width: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        color:numberList[i].buttonColor ,
                        child: Text(numberList[i].buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                        ),
                        onPressed: (){
                          play(numberList[i].audioUri);
                        },
                      ),
                    ),
                  ),
                ),
                Container(child: Text('Made by : Bhavya Verma',),padding: EdgeInsets.all(10.0),)
            ],
          ),
        ),
      ),
    );
  }
}