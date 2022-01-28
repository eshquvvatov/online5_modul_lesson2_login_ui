import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static final String id = "SignUp_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          title: Text("Sing Up Page"),
          centerTitle: true,
          backgroundColor: Colors.red,
          // flexibleSpace appBarni orqasida amallar bajarishda yordam beradi gradient yoki rasm quymoqchi buld=sak
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgX1VbJ4qMsV_yYtFL3VRcgn1kKsFLgtI6VLnxS116I_FYLc6oqmUtEUNZFmyFlgbc4ZI&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          )),
        ),*/
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.black87, Colors.black54, Colors.black38])),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          SizedBox(width: double.infinity),
                          Text(
                            "Sing Up",
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 240,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children:  [
                              Expanded(
                                  child: Container(
                                    //decoration: BoxDecoration(border:BoxBorder ),
                                    child: const TextField(
                                    style: TextStyle(fontSize: 15),
                                    decoration: InputDecoration(
                                        hintText: "Fullname",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 17),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                                  ),)

                              ),
                              Divider(
                                height: 1,
                                color: Colors.black54,
                                thickness: 1,
                              ),
                              Expanded(
                                  child: TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 17),
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                              )),
                              Divider(
                                  height: 1,
                                  color: Colors.black54,
                                  thickness: 1),
                              Expanded(
                                  child: TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                    hintText: "Phone",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 17),
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                              )),
                              Divider(
                                  height: 1,
                                  color: Colors.black54,
                                  thickness: 1),
                              Expanded(
                                  child: TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 17),
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10)),
                              )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 40,
                          minWidth: 220,
                          shape: StadiumBorder(),
                          color: Colors.black38,
                          child: const Text(
                            "SignUp",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Sign Up with SNS",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              minWidth: 100,
                              shape: StadiumBorder(),
                              color: Colors.blue,
                              child: const Text(
                                "Facebook",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              minWidth: 100,
                              shape: StadiumBorder(),
                              color: Colors.red,
                              child: const Text(
                                "Google",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 40,
                              minWidth: 100,
                              shape: StadiumBorder(),
                              color: Colors.black,
                              child: const Text(
                                "Apple",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                            text: "This ",
                            style: TextStyle(fontSize: 18,color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: "is "
                              ),
                              TextSpan(
                                text: "#Splash ",
                                style: TextStyle(color: Colors.red),
                              ),
                              TextSpan(
                                  text: "#Page",
                                  style: TextStyle(color: Colors.blue)
                              )
                            ]
                        ),)
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
