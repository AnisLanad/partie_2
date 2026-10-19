import 'package:flutter/material.dart';

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
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("anis dev",style: TextStyle(fontSize:33, color: Colors.blue,fontWeight:FontWeight.w900 ),),
            const SizedBox(height: 30,),
            Image.asset('assets/images/test.png',width: 200, height: 300,),
            const SizedBox(height: 30,),
            Image.network('https://numerique.umontpellier.fr/wp-content/uploads/2024/07/Image-3-scaled.jpg'),
            SizedBox(height: 30,),
            Icon(Icons.home,size:55,color:Colors.red),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,size:55,color:Colors.red),),
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text('bouton'),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),)),
                OutlinedButton( onPressed: () {  }, child: Text('data'),),
                TextButton(onPressed: (){}, child: Text('data'),)

              ],
            )
          ],
        ),
      )
    );
  }
}
