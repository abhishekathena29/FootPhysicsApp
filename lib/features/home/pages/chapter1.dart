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

class ChapteronePage extends StatefulWidget {
  ChapteronePage({super.key});

  @override
  State<ChapteronePage> createState() => _ChapteronePageState();
}

class _ChapteronePageState extends State<ChapteronePage> {
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
                        Text("One of the most important strategic decisions in the game of football is the positioning of players, known as the team's formation. \n\nA formation is chosen based on whether a team prefers to attack, to control midfield, play on the counter or to defend, or is created based on the abilities of a team’s players. But how does a formation affect whether the team can control the ball better or play on the counter? Unexpectedly, the answer lies in the physics behind the game.",
                        style: CustomTextStyle.paragraph),
                        Text("The coordinate plane:",
                        style: CustomTextStyle.subheader),
                        Text("Let’s create a universal method to define the players' positions. \n\nA player’s position is always defined relative to another player known as the reference player/frame, or the field itself. For any player on the field there are 10 other reference players from their team relative to whom a player's position can be described. For example, when describing the right wing's position, it is usually said to be over the right back or to the right of the striker.\n\nHowever, this is a pretty ambiguous definition of their position with too many different frames of references, which is where we introduce physics. The player's position can now be described based on their distances from each other. For example, In a  4 - 3 - 3 formation, the right wing is a distance of 50 metres from the goal line and 2-3 metres from the touchline on the right. The right wing can also be said to be 30 metres above the right back or 10 metres to the right of the striker. \n\nThe large number of different reference points makes it very difficult to understand the position of players relative to each other and the field. So what you may have realised is that an easier method of defining their positions would be using a single point of reference. \n\n Well that job is satisfied by the coordinate plane where the reference point is known as the graph's origin. This origin lies at the centre of the field (0,0). Now the right wing’s position can be described based on this coordinate plane in the format (x metres, y-metres) wherein a change in position horizontally is seen as a change in x coordinate, while a change in position vertically is seen by a change in its y coordinate. ",
                        style: CustomTextStyle.paragraph),
                        Image(image: AssetImage('assets/Chapter1/1.png')),
                        Text("From the above image you can see how positions can change relative to the reference frame as we switch from having the centre of the field as our reference frame to a player as our reference frame.",
                        style: CustomTextStyle.paragraph,),
                        Text("Distance:",
                        style: CustomTextStyle.subheader,),
                        Text("Now the players' distances from each other can be calculated based on their positions. Using the distance formula: ",
                        style: CustomTextStyle.paragraph,),
                        Image(image: AssetImage("assets/Chapter1/2.png")),
                        Text("How does this give you the distance? Imagine it this way, the right wing is at a coordinate of (9,9) while the left back is at a coordinate of (-9,-9), the difference in their y coordinate y1 - y2 is -18, and the difference in their x coordinate is -18 or x1-x2. Using this change we can create a triangle where a horizontal line (a) represents the change in x coordinate, a vertical line (b) represents the change in the y coordinate and the hypotenuse (d) represents the distance between both players. ",
                        style:  CustomTextStyle.paragraph,),
                        Image(image: AssetImage('assets/Chapter1/3.png')),
                        Text("Then using the pythagorean theorem:",
                        style: CustomTextStyle.paragraph,),
                        SizedBox(child: Image(image:AssetImage('assets/Chapter1/4.png'))),
                        Text("we find that the distance c is given by:", 
                        style:CustomTextStyle.paragraph ,),
                        Image(image: AssetImage('assets/Chapter1/5.png')),
                        Text("Formations and distances:",
                        style: CustomTextStyle.subheader,),
                        Text("What differentiates the 4-4-2 formation from a 4-3-3 formation is the distance between each of their players, and the player densities in different areas. The 4-4-2 formation utilises more players at the back and fewer players at midfield and strike. When defending, 4 defenders and 4 midfielders occupy the defensive line, while the 2 strikers remain near the halfline. Since the defence is more dense, each player has to cover a small area or distance around them which enables a 4-4-2 formation to defend very well. However, during the attacking phase the left and right midfielders act as wingers, which leaves only 2 midfielders at the center, this means each midfielder has to cover a lot more distance. Which is why a 4-4-2 formation does not enable teams to maintain possession, and they prefer to play on the counter. A 4-3-3 formation instead utilises 3 midfielders to reduce the distance each midfielder has to cover, hence, increasing the teams possession of the ball. \n\nPlaystyle: The 4-4-2 formation can be seen to utilise the counter attacking play style such as that of man united under sir alex ferguson, while the 4-3-3 formation can be seen using the possession playstyle such as that of barcelona and manchester city under pep guardiola. ",
                        style: CustomTextStyle.paragraph,),


                  
                  
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