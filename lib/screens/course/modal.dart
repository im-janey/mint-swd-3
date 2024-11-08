import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Row(
                      children: [
                        Icon(Icons.warning, color: Colors.black),
                        SizedBox(width: 10),
                        Text('코스 이름 입력'),
                      ],
                    ),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: '코스 이름을 입력하세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color(0xff4863E0), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color: Color(0xff4863E0), width: 2),
                        ),
                      ),
                      cursorColor: const Color(0xff4863E0),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('취소'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // 실행 버튼 클릭 시 동작
                        },
                        child: const Text(
                          '설정',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('팝업창 열기'),
          ),
        ),
      ),
    );
  }
}
