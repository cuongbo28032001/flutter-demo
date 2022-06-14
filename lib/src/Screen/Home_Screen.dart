import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //chỉnh text về đầu
                    children: const [
                      Text(
                        "Xin chào",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 166, 166),
                            fontSize: 12),
                      ),
                      Text("Nguyễn Văn A",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
              Text(
                "Đơn hàng nổi bật",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          // const CustomBestProduct(),
        ],
      ),
    );
  }
}
