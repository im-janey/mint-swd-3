import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final TextEditingController _courseNameController = TextEditingController();

  Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff5CCDD0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.flag,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(height: 50)
        ],
      ),
      content: TextField(
        controller: _courseNameController,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          hintText: '코스 이름을 입력하세요',
          hintStyle: const TextStyle(color: Colors.white54),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        cursorColor: Colors.white,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            '취소',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _createCourse(context);
          },
          child: Text(
            '설정',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  void _createCourse(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final courseName = _courseNameController.text.trim();
      if (courseName.isNotEmpty) {
        try {
          await FirebaseFirestore.instance.collection('courses').add({
            'name': courseName,
            'createdAt': FieldValue.serverTimestamp(),
            'createdBy': user.uid,
          });
          Navigator.of(context).pop(); // 모달 닫기
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('코스가 성공적으로 생성되었습니다.')),
          );
        } catch (e) {
          print('Error creating course: $e');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('코스 생성 중 오류가 발생했습니다.')),
          );
        }
      }
    }
  }
}
