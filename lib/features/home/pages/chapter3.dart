import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foot_physics_aap/features/home/pages/lessons.dart';
import 'package:foot_physics_aap/features/models/chapters.dart';
import 'package:flutter_tex/flutter_tex.dart';

class CustomTextStyle {
  static const TextStyle header = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    wordSpacing: 2
  );
    static const TextStyle subheader = TextStyle(
    color: Colors.black,
    fontSize: 21,
    fontWeight: FontWeight.w500,
    wordSpacing: 3
  );
    static const TextStyle paragraph = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w200,
    wordSpacing: 4
  );
}
class TexViewCustomTextStyle {
    static const TeXViewStyle paragraph = TeXViewStyle(
    padding: TeXViewPadding.all(0),
  );
}

class ChapterthreePage extends StatefulWidget {
  ChapterthreePage({super.key});

  @override
  State<ChapterthreePage> createState() => _ChapterthreePageState();
}

class _ChapterthreePageState extends State<ChapterthreePage> {
  void _getCategories(){
    categories = CategoryModel.getCategories();
    
  }


  List<CategoryModel> categories = [];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    const TeXViewRenderingEngine.katex();

    _getCategories();
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        height: screenHeight*0.05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

                IconButton(
                    icon: const Icon(
                      Icons.book,
                      color: Colors.blue,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: (){
                                                  Navigator.pop(context);
                    }),
                IconButton(
                    icon: const Icon(
                      Icons.quiz,
                      color: Colors.grey,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: (){
                                                  Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => LessonPage() ));
                    }),

            ]),
      ),

      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height:screenHeight*0.14,
            
            decoration: const BoxDecoration(

                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/homeBackground.jpg')
                        ,
                      ),            ),
        ) ,
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left:8, right:8, bottom:screenHeight*0.015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        
                    SizedBox(
                      width: screenWidth*0.8,
                      child: Text(categories[0].name,  overflow: TextOverflow.ellipsis, style:CustomTextStyle.header),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 20,
                      runSpacing: 20,
                      children: [


                  
                  
                      ],
                    ),
                  ),
                                ),
                ))
            ],
          ),
        ),
        ],
      ),
              
    );

  }
}