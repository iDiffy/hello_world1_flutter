import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Center(
            child: Column(
              children: [

                Text(
                  "This is my first app",
                  style: GoogleFonts.radioCanada(
                    textStyle: TextStyle(fontSize: 32, color: Colors.blue),
                  ),
                ),
                SizedBox(height: 8,),
                Text("Welcome to my app", style: GoogleFonts.oswald(),),
                SizedBox(height: 8,),
                Text("I hope you enjoy it"),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This is left"),
                    SizedBox(width: 8,),
                    Text("This is right")
                  ],
                ),
                SizedBox(height: 8,),
                Image.network("https://assets.editorial.aetnd.com/uploads/2019/03/topic-london-gettyimages-760251843-feature.jpg"),
                TextField(decoration: InputDecoration(hintText: "Enter Your Name"),
                  controller: nameEditingController,),
                TextButton(onPressed: (){

                  // output tengok dekat 'Run'
                  print("Hello World ${nameEditingController}");

                  var snackbar = SnackBar(content: Text("Hello ${nameEditingController.text}"));

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }, child: Text("Press Me"))
              ],
            )),
      ),
    );
  }
}