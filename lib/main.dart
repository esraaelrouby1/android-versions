import 'package:flutter/material.dart';

void main() {
  runApp(const AndroidVersionsApp());
}

class AndroidVersionsApp extends StatelessWidget {
  const AndroidVersionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android Versions',
      home: AndroidVersionsList(),
    );
  }
}

class AndroidVersionsList extends StatelessWidget {
  const AndroidVersionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Versions'),
        backgroundColor: const Color.fromARGB(255, 146, 90, 0),
      ),
      body: ListView.builder(
        itemCount: androidVersions.length,
        itemBuilder: (context, index) {
          final version = androidVersions[index];
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  version['name'],
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Version: ${version['version']}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green.shade800,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Release Date: ${version['releaseDate']}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<Map<String, dynamic>> androidVersions = [
  {"name": "Cupcake", "version": "1.5", "releaseDate": "April 2009"},
  {"name": "Donut", "version": "1.6", "releaseDate": "September 2009"},
  {"name": "Eclair", "version": "2.0-2.1", "releaseDate": "October 2009"},
  {"name": "Froyo", "version": "2.2-2.2.3", "releaseDate": "May 2010"},
  {
    "name": "Gingerbread",
    "version": "2.3-2.3.7",
    "releaseDate": "December 2010"
  },
  {"name": "Honeycomb", "version": "3.0-3.2.6", "releaseDate": "February 2011"},
  {
    "name": "Ice Cream Sandwich",
    "version": "4.0-4.0.4",
    "releaseDate": "October 2011"
  },
  {"name": "Jelly Bean", "version": "4.1-4.3.1", "releaseDate": "July 2012"},
  {"name": "KitKat", "version": "4.4-4.4.4", "releaseDate": "October 2013"},
  {"name": "Lollipop", "version": "5.0-5.1.1", "releaseDate": "November 2014"},
  {
    "name": "Marshmallow",
    "version": "6.0-6.0.1",
    "releaseDate": "October 2015"
  },
  {"name": "Nougat", "version": "7.0-7.1.2", "releaseDate": "August 2016"},
  {"name": "Oreo", "version": "8.0-8.1", "releaseDate": "August 2017"},
  {"name": "Pie", "version": "9.0", "releaseDate": "August 2018"},
  {"name": "Android 10", "version": "10.0", "releaseDate": "September 2019"},
  {"name": "Android 11", "version": "11.0", "releaseDate": "September 2020"},
  {"name": "Android 12", "version": "12.0", "releaseDate": "October 2021"},
  {"name": "Android 13", "version": "13.0", "releaseDate": "August 2022"},
];
