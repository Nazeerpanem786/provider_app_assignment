          //Assignment
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/item_data.dart';
import 'item_list.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return ChangeNotifierProvider(

      create: (context) => ItemData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green
        ),
        home: Home(),
      ),
    );
  }


}

class Home extends StatefulWidget{


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

 final TextEditingController _controller = TextEditingController();
 final TextEditingController _controller1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp Title', style: TextStyle(color: Colors.yellow,
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LOGIN', style: TextStyle(color: Colors.black),),
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemList()));
              setState(() {
                _controller.text;
                _controller1.text;
              });
            }, child: Text('Submit'),
            ),
            SizedBox(
              height: 150,
              child: Text("Entered Text: "),
            ),
          ],
        ),
      ),
    );
  }


}
