import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/pages/base.dart";

class NewCardPage extends StatelessWidget {
  const NewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "New card",
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: Stack(
              alignment: const Alignment(0.0, 0.0),
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // first card
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 700,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(color: Colors.black54, width: 4.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // second card
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 700,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[50],
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(color: Colors.black54, width: 4.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
          ),

          const SizedBox(height: 30),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 60,
                maxHeight: 60,
                minWidth: 200,
                maxWidth: double.infinity,
              ),
              // width: MediaQuery.of(context).size.width - 60,
              // height: MediaQuery.of(context).size.width / 6,
              // margin: const EdgeInsets.only(bottom: 30),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54, width: 4),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          // circular button
          // Center(
          // ),
        ],
      ),
    );
  }
}
