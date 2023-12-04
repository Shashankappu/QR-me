import 'package:flutter/material.dart';
import 'package:qr_scanner/generate_qr_code.dart';
import 'package:qr_scanner/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "QR Scanner",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
  
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: Text("QR scanner Page"),backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(onPressed: (){
              setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
              });
            }, child: const Text("Scan Qr")),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed:(){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode()));
              });
            },child: const Text("Generate QR"))
          ],
        )

      )

    );
  }
}

