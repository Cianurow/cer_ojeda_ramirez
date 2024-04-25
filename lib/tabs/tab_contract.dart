import 'package:flutter/material.dart';

class Contract {
  final String state;
  final double amount;
  final String type;
  final String targetPerson;
  final String image;

  Contract({
    required this.state,
    required this.amount,
    required this.type,
    required this.targetPerson,
    required this.image,
  });
}

class TabContract extends StatelessWidget {
  final List<Contract> contracts = [
    Contract(
      state: 'Abierto',
      amount: 2000000,
      type: 'Asesinato',
      targetPerson: 'John Wick',
      image: 'assets/images/john-wick.jpg',
    ),
    Contract(
      state: 'Cerrado',
      amount: 90000,
      type: 'Protección',
      targetPerson: 'Iosef Tarasov',
      image: 'assets/images/Iosef_Tarasov.jpg',
    ),
    Contract(
      state: 'Cerrado',
      amount: 100000,
      type: 'Asesinato',
      targetPerson: 'Koji Shimazu',
      image: 'assets/images/koji-shimazu.jpg',
    ),
    Contract(
      state: 'Abierto',
      amount: 80000,
      type: 'Asesinato',
      targetPerson: 'Mr. Nobody',
      image: 'assets/images/Mr.Nobody.png',
    ),
    Contract(
      state: 'Abierto',
      amount: 13000,
      type: 'Protección',
      targetPerson: 'Mia',
      image: 'assets/images/mia.png',
    ),
    Contract(
      state: 'Abierto',
      amount: 1111000000,
      type: 'Asesinato',
      targetPerson: 'Roronoa Zoro',
      image: 'assets/images/zoro.png',
    ),
    Contract(
      state: 'Cerrado',
      amount: 70000,
      type: 'Asesinato',
      targetPerson: 'Marcus',
      image: 'assets/images/marcus.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 25, 85),
      body: ListView.builder(
        itemCount: contracts.length,
        itemBuilder: (context, index) {
          final contract = contracts[index];
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Card(
              color: Color.fromARGB(202, 255, 255, 255),
              elevation: 3,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(contract.image),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Persona Objetivo: ${contract.targetPerson}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF7B10A1),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Estado: ${contract.state}',
                                style: TextStyle(
                                  color: contract.state == 'Abierto'
                                      ? Color(0xFF4A7DDF)
                                      : Color(0xFF0A0615),
                                ),
                              ),
                              Icon(
                                contract.state == 'Abierto'
                                    ? Icons.lock_open
                                    : Icons.lock,
                                color: contract.state == 'Abierto'
                                    ? Color(0xFF4A7DDF)
                                    : Color(0xFF0A0615),
                                size: 20,
                              ),
                            ],
                          ),
                          Text(
                            'Monto: \$${contract.amount.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF161079),
                            ),
                          ),
                          Text(
                            'Tipo: ${contract.type}',
                            style: TextStyle(
                              color: Color(0xFF1F0A32),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
