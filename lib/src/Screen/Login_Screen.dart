// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:home_job/src/Screen/Home_Screen.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({Key? key}) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.9,
      child: Column(
        children: [
          SizedBox(
            // width: width * 0.82,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tên đăng nhập",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5)),
                      labelText: 'User Name',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Mật khẩu",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 5)),
                      labelText: 'Password',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CustomCheckBox(),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Lưu mật khẩu",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const Text(
                "Quên mật khẩu",
                style: TextStyle(
                    color: Color.fromARGB(255, 20, 130, 197), fontSize: 12),
                textAlign: TextAlign.right,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

class HoverLogin extends StatefulWidget {
  const HoverLogin({Key? key}) : super(key: key);

  @override
  State<HoverLogin> createState() => _HoverLoginState();
}

class _HoverLoginState extends State<HoverLogin> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.3,
      child: RaisedButton(
        color: const Color.fromARGB(255, 255, 127, 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledColor: _hasBeenPressed ? Colors.blue : Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        child: const Text(
          'Đăng nhập',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 30, 0, 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: width * 0.4,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'phusi.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: width * 0.58,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'maybay.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.only(top: 50),
                      width: width * 0.55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Tham gia với AAM",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 127, 16),
                                  fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Trở thành",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "CTV/TTS của AAM",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "AAM tạo cơ hội giúp bạn tìm kiếm những việc làm phong phú với những công việc đầy đủ tiêu chí chất lượng - uy tín đem lại cho bạn kinh nghiệm và những trải nghiệm mới trong ngành xuất khẩu lao động.",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 156, 135)),
                )),
            const CustomTextfield(),
            const HoverLogin(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: width * 0.667,
                child: Column(
                  children: [
                    const Text(
                      "Đăng ký trở thành CTV/TTS của AMM?",
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Đăng ký CTV",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 130, 197),
                              fontSize: 12),
                        ),
                        Text("Đăng ký quan tâm",
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 130, 197),
                                fontSize: 12))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
