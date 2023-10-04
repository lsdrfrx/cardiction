import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/widgets/appbar.dart";
import "package:flutter_desktop_test/src/widgets/drawer.dart";

class NewCardPage extends StatelessWidget {
  const NewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Column(
        children: [

          const SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.only(left: 30, right: 30),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black54, width: 4.0),
            ),
          ),

          const SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.only(left: 30, right: 30),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.lightBlue[50],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black54, width: 4.0),
            ),
          ),

          const SizedBox(height: 30),
          Container(
            // width: MediaQuery.of(context).size.width - 60,
            height: 60,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54, width: 4),
            ),
            child: const Center(
              child: Text('Save card', style: TextStyle(fontSize: 30),),
            ),
          ),
        ],
      ),
    );
  }
}
