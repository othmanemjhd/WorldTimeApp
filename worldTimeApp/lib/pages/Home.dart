import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SafeArea(
        child : Column(
          children: [
            TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, "/Location");
                },
                icon: const Icon(Icons.edit_location,color: Colors.blueGrey,),
                label: const Text("Edit location",style: TextStyle(color: Colors.blueGrey),),

            ),
          ],
        )
      ),
    );
  }
}
