import 'package:flutter/material.dart';
import 'package:sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Geldiği Sayfaya Dön"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text("Anasayfaya Dön"),
              onPressed: (){

                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            ElevatedButton(
              child: Text("Anasayfaya geçiş yap"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(title: toString())));
              },
            ),
          ],
        ),
      ),

    );
  }
}
