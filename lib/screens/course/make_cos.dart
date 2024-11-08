import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/course/add_place.dart';
import 'package:flutter_application_1/screens/course/modal.dart';

class MakeCosPage extends StatelessWidget {
  const MakeCosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      '코스 1',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Modal(),
                        ),
                      ),
                      icon: const Icon(
                        Icons.edit_location_alt_outlined,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const Text(
                  '2024.10.3',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            height: 200.0,
            color: Colors.grey[300],
            child: const Center(
              child: Text('지도'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '코스 만들기',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Image.asset(
                    'assets/make_cos.png',
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0, right: 4, top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddPlacePage(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black, width: 0.3),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        '장소 추가',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
