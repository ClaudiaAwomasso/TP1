import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
   final int
   _myState = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {  int _myState = 0; });
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              height: 200,width: 500,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(20),
                child: Image.network('https://img.freepik.com/photos-gratuite/chaise-plage-parapluie-rayures-offrent-evasion-charmante-sables-dores_91128-4613.jpg?size=626&ext=jpg',
                fit: BoxFit.cover,
                ),
              ),
            ),
             SizedBox(height: 10,),
             Row(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.green,
                   ),
                   child: TextButton(
                       onPressed: () {
                         setState(() {
                           _myState:Icon(Icons.account_box);
                         });
                       },
                       child: Text("Changer en Icon" , style: TextStyle(color: Colors.white),)),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   decoration: BoxDecoration(
                     color: Colors.red
                     ,
                   ),
                   child: TextButton(
                       onPressed: () {  },
                       child: Text("Supprimer" , style: TextStyle(color: Colors.white),)),
                 )
               ],
             )
          ],
        ),

      )

    );
  }
}
