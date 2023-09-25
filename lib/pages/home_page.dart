import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page_one.dart';
import 'page_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
        body: Column(
          children: [
            Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(40),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade900, Colors.red.shade600, Colors.blue.shade900],
                    )
                ),
      
                child: const Center(
                  child: Text(
                    "GetX",
                    style: TextStyle(
                      fontSize: 50,
                      color:Colors.white
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 50,),
            Center(
                child : Container(
                    width: MediaQuery.of(context).size.width-20,
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Search GetX..',
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                      ),)
                )),
            const SizedBox(height: 50,),
            //GetX start from here
            RichText(
              text: TextSpan(
                      text: 'First GetX',
                      recognizer: TapGestureRecognizer()
                        ..onTap = (){
                          Get.to(()=>const PageOne());
                        },
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 30
                      ))
            ),
            const SizedBox(height: 10,),
            //Explore GetX
            RichText(
                text:TextSpan(
                    text: 'Explore GetX',
                    recognizer: TapGestureRecognizer()
                      ..onTap = (){
                        Get.to(()=>const PageTwo(), arguments: {
                          'price': Random().nextInt(1000).toString(),
                          'course': 'Getx',
                        });
                      },
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 30
                    )
                )
            ),
            const SizedBox(height: 50,),
            const Divider(),
            const SizedBox(height: 30,),
            const Text('Navigate named routes',
            style: TextStyle(
              fontSize: 30
            ),
            ),
            const SizedBox(height: 30,),
            //last two routes/bottons
            Expanded(child:Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
                  gradient:LinearGradient(
                      colors:[Colors.red, Color.fromARGB(255, 2, 90, 5), Color.fromARGB(255, 7, 71, 124)]
                  ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(child:Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.grey.shade300,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),),
                        onPressed: () {
                          Get.toNamed('/course-page',
                          arguments: {
                            'price': Random().nextInt(500000).toString(),
                          });
                        },
                        child: Text(
                          "Course",
                          style: TextStyle(
                              fontSize: 20,
                              color:Colors.grey.shade900
                          ),
                        ),
                      ),
      
                    ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child:Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFffbc33e)
                          ),
      
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),),
                            onPressed: () {
                              Get.toNamed('/more-page/${Random().nextInt(100)}');
                            },
                            child: Text(
                              "More",
                              style: TextStyle(
                                  fontSize: 20,
                                  color:Colors.grey.shade900
                              ),
                            ),
                          ),
      
                        )
                    )
                  ],
                ),
              ),
            )
            )
          ],
        ),
          ),
      );
  }
}
