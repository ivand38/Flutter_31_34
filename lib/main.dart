import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Picker',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('Date Picker'),
          leading: Icon(Icons.arrow_back_ios,
          color: Colors.blue,
          size: 25.0,)
        ),
        body: Center(
          child: CupertinoButton.filled(
            onPressed: (){
              showCupertinoModalPopup(
                context: context, 
                builder: (context){
                return Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: CupertinoDatePicker(
                    onDateTimeChanged: (datetime){
                    },
                    initialDateTime: DateTime.now(),
                    minimumYear: 2000,),
                );
              });
            },
            child: Text('Select Date'),
          ),
        ),
      ),
    );
  }
}
