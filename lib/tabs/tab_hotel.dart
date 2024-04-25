import 'package:flutter/material.dart';

class Hotel {
  final String name;
  final String location;
  final int numRooms;
  final String image;

  Hotel({
    required this.name,
    required this.location,
    required this.numRooms,
    required this.image,
  });
}

class TabHotel extends StatefulWidget {
  const TabHotel({super.key});

  @override
  _TabHotelState createState() => _TabHotelState();
}

class _TabHotelState extends State<TabHotel> {
  var _hotels = <Hotel>[
    Hotel(
      name: 'Continental de Nueva York',
      location: 'Nueva York, Estados Unidos',
      numRooms: 200,
      image: 'assets/images/continental-ny.png',
    ),
    Hotel(
      name: 'Continental de Casablanca',
      location: 'Casablanca, Marruecos',
      numRooms: 150,
      image: 'assets/images/continental-casablanca.png',
    ),
    Hotel(
      name: 'Continental de Roma',
      location: 'Roma, Italia',
      numRooms: 180,
      image: 'assets/images/continental-roma.png',
    ),
    Hotel(
      name: 'Continental de Osaka',
      location: 'Osaka, Japón',
      numRooms: 120,
      image: 'assets/images/continental-osaka.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 25, 85),
      body: ListView.builder(
        itemCount: _hotels.length,
        itemBuilder: (context, index) {
          final hotel = _hotels[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(hotel.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotel.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF4A7DDF),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Ubicación: ${hotel.location}',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Número de habitaciones: ${hotel.numRooms}',
                            style: TextStyle(
                              color: Colors.black,
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
