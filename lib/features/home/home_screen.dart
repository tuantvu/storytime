import 'package:flutter/material.dart';
import 'package:storytime/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget route(BuildContext context, _) {
    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.gui.background.path),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _HomeNavButton(
                  label: 'Read',
                  imagePath: Assets.images.gui.kisspngImaginationBook.path,
                ),
                _HomeNavButton(
                  label: 'Play',
                  imagePath: Assets.images.gui.childrenPlay.path,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeNavButton extends StatelessWidget {
  const _HomeNavButton({
    required this.label,
    required this.imagePath,
  });

  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.all(40.0)),
            elevation: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return 48;
              }
              return 4;
            }),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            ),
            shadowColor: MaterialStateProperty.all(Colors.black),
            side: MaterialStateProperty.all(
              BorderSide(
                width: 0.5,
                color: Colors.green.shade900,
              ),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath)),
                  ),
                ),
              ),
              Text(
                label,
                style: TextStyle(fontSize: 48, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      // child: Container(
      //   margin: const EdgeInsets.all(40.0),
      //   decoration: BoxDecoration(
      //     border: Border.all(),
      //     borderRadius: BorderRadius.circular(24),
      //     boxShadow: [BoxShadow(offset: Offset(2, 2), blurRadius: 4)],
      //   ),
      //   child: Container(
      //     padding: const EdgeInsets.all(40.0),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(24),
      //     ),
      //     child: GestureDetector(
      //       onTap: () {
      //         print('lhi');
      //       },
      //       child: Column(
      //         children: [
      //           Expanded(
      //             child: Container(
      //               height: double.infinity,
      //               alignment: Alignment.center,
      //               decoration: BoxDecoration(
      //                 image: DecorationImage(image: AssetImage(imagePath)),
      //               ),
      //             ),
      //           ),
      //           Text(
      //             label,
      //             style: TextStyle(fontSize: 48),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
