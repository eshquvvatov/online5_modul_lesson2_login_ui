import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "Login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String txt = '#football have a fun time #instagram';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
              Colors.green.shade900,
              Colors.green,
              Colors.green.shade400
            ])),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Wellcome Back",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                  offset: Offset(0, 5))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              alignment: Alignment.centerLeft,
                              child: const TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  isCollapsed: false,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black54,
                              height: 1,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  left: 10,
                                  top: 10,
                                ),
                                border: InputBorder.none,
                                hintText: "Password",
                                isCollapsed: false,
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 45,
                      minWidth: 240,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      textColor: Colors.white,
                      color: Colors.green.shade700,
                      shape: StadiumBorder(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Login with SMS",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 45,
                          shape: StadiumBorder(),
                          color: Colors.blue,
                          child: const Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                          minWidth: 150,
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () {},
                          height: 45,
                          shape: StadiumBorder(),
                          color: Colors.black54,
                          child: const Text(
                            "Github",
                            style: TextStyle(color: Colors.white),
                          ),
                          minWidth: 150,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    // RichText(text: const TextSpan(
                    //   text: "Power",
                    //   style: TextStyle(fontSize: 25,color: Colors.grey),
                    //   children: [
                    //     TextSpan(
                    //       text: "by"
                    //     ),
                    //     TextSpan(
                    //       text: "#PDP",
                    //       style: TextStyle(color: Colors.blue),
                    //     ),
                    //     TextSpan(
                    //       text: "#Academy",
                    //       style: TextStyle(color: Colors.blue)
                    //     )
                    //   ]
                    // ),)
                    Row(
                      children: [
                        for(int i = 0; i<txt.length; i++) _template(txt, i)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

Widget _template(String msg, int index){
  return RichText(
    text: TextSpan(
      text: msg.split(' ')[index].toString() + ' ',
      style: TextStyle(color: msg.split(' ')[index].toString().startsWith('#') ? Colors.blue : Colors.black, fontWeight: msg.split(' ')[index].toString().startsWith('#') ? FontWeight.bold : FontWeight.normal)
    )
  );
}