import 'package:flutter/material.dart';
import 'package:foot_physics_aap/features/home/pages/lessons.dart';
import 'package:auto_size_text/auto_size_text.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 125, 163, 47),
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenHeight *0.67,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/LoginBackground.png')
                        ,
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight*0.33,
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left:screenWidth*0.05, right:screenWidth*0.05,top:screenHeight*0.025, bottom: screenHeight*0.005),
                          child: SizedBox(
                            width: screenWidth*0.8,
                            height: screenHeight*0.08,
                            child: const AutoSizeText('Embrace your football Journey with Fysics!', 
                            textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                                ),
                                maxLines: 2,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:screenWidth*0.05, right:screenWidth*0.05,bottom: screenHeight*0.01),
                          child: SizedBox(
                            height: screenHeight*0.05,
                            child: const AutoSizeText('Log in or sign up to maintain your progress and stay one step ahead of the game!',
                            textAlign: TextAlign.center,
                            maxLines: 2,),
                          ),
                        ),         
                        Center(
                          child: ElevatedButton.icon(onPressed: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => const LoginPage() ));
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              minimumSize: Size(screenWidth*0.7, screenHeight*0.05)
                            ), 
                            label: SizedBox(
                              width: screenWidth*0.2,
                              child: const Center(
                                child: AutoSizeText('Log in', 
                                  style: TextStyle(
                                    color: Colors.white,),
                                  maxLines: 1,),
                              ),
                            ),
                            
                          
                          ),
                        ),
                        SizedBox(
                          height: screenHeight*0.05,
                          width: screenWidth*0.15,
                          child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LessonPage()));
                          }, child:  const AutoSizeText("Skip"),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
