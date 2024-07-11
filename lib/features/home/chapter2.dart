import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foot_physics_aap/features/home/pages/lessons.dart';
import 'package:foot_physics_aap/features/models/chapters.dart';

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

class ChaptertwoPage extends StatefulWidget {
  ChaptertwoPage({super.key});

  @override
  State<ChaptertwoPage> createState() => _ChaptertwoPageState();
}

class _ChaptertwoPageState extends State<ChaptertwoPage> {
  void _getCategories(){
    categories = CategoryModel.getCategories();
    
  }


  List<CategoryModel> categories = [];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                  child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        Text("Which way?",
                        style: CustomTextStyle.subheader,),
                        Text("We saw how a player's position can be defined relative to a coordinate plane, and how the coordinate system can be used to calculate the distance between players.\n\nHowever, the coordinate plane doesn’t just help us find the distance between the two players, it also helps us find the direction in which a player is relative to another. Which is where the concept of displacement is brought about. Distance provides us with a magnitude of positions relative to each other, however, saying the right wing is 20 metres away from the left back does not tell us whether the right wing is really ahead of the left back or if the left back is really behind the right wing. Which is why we introduce the topic of displacement, which has both magnitude/distance and direction. ",
                        style: CustomTextStyle.paragraph,),
                        Text("Displacement Vectors",
                        style: CustomTextStyle.subheader,),
                        Image(image: AssetImage('assets/Chapter1/6.png'),),
                        Text("Let’s say the head of arrow A is where our right winger stands, while the tail of the arrow is where the left back stands, then x is the distance between them horizontally (x-axis), while y is the distance between them vertically (y-axis). \n\nThe right winger is positioned above and to the right of the left back, so x and y will both point in the positive direction.\n\nThe exact angle at which the right winger stands relative to the left back is given by the angle a created between the resultant vector A and the line x",
                        style: CustomTextStyle.paragraph,),
                        Text("If instead we were finding the direction of the left wing from the right back’s perspective, x would be negative, while y would be positive, resulting in:",
                        style: CustomTextStyle.paragraph,),
                        Image(image: AssetImage('assets/Chapter1/10.png')),
                        Text("SOHCAHTOA",
                        style: CustomTextStyle.subheader,),
                        Text("This angle a can be calculated using the mnemonic device SOHCAHTOA which identifies the ratios of sides in a right angled triangle and their corresponding functions, Sin, Cos and Tan:\n\nS(Sin)O(opposite)H(Hypotenuse)\nC(Cos)A(Adjacent)H(Hypotenuse)\nT(Tan)O(Opposite)A(Adjacent)\n\nThe first term is the function, the second term the numerator and the third term the denominator. So:\n\nSin(a)= Opposite/Hypotenuse\nCos(a)= Adjacent/Hypotenuse\nTan(a) = Opposite/Adjacent",
                        style:CustomTextStyle.paragraph,),
                        Text("Opposite and Adjacent refer to the length of the side Opposite or Adjacent to angle theta , while the hypotenuse remains the same regardless of the chosen angle. (Remember, the right angle is always 90 degrees so does not need to be calculated using the rules of SOHCAHTOA)",
                        style: CustomTextStyle.paragraph,),
                        Image(image: AssetImage('assets/Chapter1/7.png')),
                        Image(image: AssetImage('assets/Chapter1/8.png')),
                        Text("Calculating Angles",
                        style: CustomTextStyle.subheader,
                        ),
                        Image(image: AssetImage('assets/Chapter1/11.png'),),

                        Text("To find the exact angle at which one player is relative to the other, angle a should be measured against the positive direction of the x axis till the hypotenuse of the triangle.\n\nIn this example, the angle a can be found using the rules of SOHCAHTOA :",
                        style: CustomTextStyle.paragraph,),
                        Text("Notice y is Opposite to angle a while x is Adjacent to it, so the angle can be calculated using the function that corresponds to the opposite and adjacent sides, thats right Tan: Tan(O/A) = Tan(y/x) so, a :",
                        style: CustomTextStyle.paragraph,),
                        Center(child: Image(image: AssetImage('assets/Chapter1/13.png'))),
                        Text("Example 2",
                        style: CustomTextStyle.subheader,),
                        Image(image: AssetImage('assets/Chapter1/12.png')),
                        Text("In this example the first step is to find the interior angle z using the rules of sohcahtoa. Since positions are measured against the positive direction of the x axis, to find the angle a at which the left wing stands relative to the right back, you must subtract z from 180.",
                        style: CustomTextStyle.paragraph,),
                        Text("Distance vs Distance travelled",
                        style: CustomTextStyle.subheader,),
                        Text("When we talk about distance, we refer to the magnitude of displacement, meaning the direction of displacement does not matter. Midfielders usually have to dribble in tight spaces which require multiple twists and turns, when calculating distance we ignore these twists and turns and simply measure the change in their position using final and initial positions. On the other hand, when calculating the distance travelled by this midfielder, we must account for all the additional distance that was covered due to the twists and turns. When sports analysts talk about the distance covered by players in a game they’re referring to the distance travelled and not the distance. ",
                        style: CustomTextStyle.paragraph,),
                        Text("Distances and Passing",
                        style: CustomTextStyle.subheader,),
                        Text("Push Passes:\n\nWhen you need to give a grounded pass to a player, your plant foot should be planted a short distance of about 5 centimetres from the ball, this short distance between your feet leads to a higher centre of gravity (mentioned in chapter 2), which causes your body to maintain a posture of about 90 degrees and allows you to pass from the side of your foot both grounded and accurately.",
                        style: CustomTextStyle.paragraph,),
                        Text("Lobbed passes:\n\nOn the other hand when giving a lofted pass, your plant foot should be kept a distance of about 15 to 20 centimetres from the ball. This increased distance lowers your body's centre of gravity and allows you to strike the ball at an increased angle, and from the lace of your boot.",
                        style: CustomTextStyle.paragraph,)


                  
                  
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