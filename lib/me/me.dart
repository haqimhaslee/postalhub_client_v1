import 'package:flutter/material.dart';

class MeProfile extends StatefulWidget {
  const MeProfile({super.key});
  @override
  State<MeProfile> createState() => _MeProfileState();
}

class _MeProfileState extends State<MeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 5,
                  right: 5,
                  bottom: 20,
                ),
                child: Text(
                  'MeProfile',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(
                          top: 0,
                          left: 25,
                          right: 25,
                          bottom: 0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 5,
                                right: 5,
                                bottom: 20,
                              ),
                              child: Text(
                                'Item Here',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
