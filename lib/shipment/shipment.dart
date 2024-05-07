import 'package:flutter/material.dart';

class Shipment extends StatefulWidget {
  const Shipment({super.key});
  @override
  State<Shipment> createState() => _ShipmentState();
}

class _ShipmentState extends State<Shipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Add Shipment'),
        icon: const Icon(Icons.add),
      ),
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
                  'Shipment',
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
                                'Parcel',
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
