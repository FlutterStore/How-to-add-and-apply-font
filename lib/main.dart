import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String font = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Apply Font',style: TextStyle(fontSize: 15),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child: Text('In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Swift language. However, to develop an application supporting both the OSs, we need to code in two different languages using two different frameworks. To help overcome this complexity, there exists mobile frameworks supporting both OS. These frameworks range from simple HTML based hybrid mobile application framework (which uses HTML for User Interface and JavaScript for application logic) to complex language specific framework (which do the heavy lifting of converting code to native code). Irrespective of their simplicity or complexity, these frameworks always have many disadvantages, one of the main drawback being their slow performance.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: font),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: (){
                      setState(() {
                        font = 'Satisfy';
                      });
                    }, 
                    child: const Text("Font",style: TextStyle(fontFamily: 'Satisfy',fontSize: 17),)
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: (){
                      setState(() {
                        font = 'Raleway';
                      });
                    }, 
                    child: const Text("Font",style: TextStyle(fontFamily: 'Raleway',fontSize: 17))
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
