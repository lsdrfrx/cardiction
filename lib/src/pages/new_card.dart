import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/pages/base.dart";

class NewCardPage extends StatelessWidget {
  const NewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "New card",
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

            // first card
            const SizedBox(height: 30),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black54, width: 4.0),
                  ),
                ),
              ),

              // second card
              const SizedBox(height: 30),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black54, width: 4.0),
                  ),
                ),
              ),

              // button in the bottom
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: MediaQuery.of(context).size.width / 6,
                  margin: const EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54, width: 4)
                  ),
                ),
              ),
            ]
          ),

          // circular button
              Center(
                child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black54, width: 4),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
