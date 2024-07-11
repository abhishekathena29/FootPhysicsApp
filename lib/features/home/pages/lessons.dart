import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foot_physics_aap/features/models/chapters.dart';
class LessonPage extends StatefulWidget {
  LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  void _getCategories(){
    categories = CategoryModel.getCategories();
  }

  List<CategoryModel> categories = [];
var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    _getCategories();
    return Scaffold(
      key: scaffoldKey,
        endDrawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(160, 12, 139, 146)
            ),
            accountName: const Text('Test123') ,
            accountEmail: const Text('test@123.com'),
            currentAccountPicture: Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
            ),

        const ListTile(
          title: Text('data'),
        ),
      ],
    ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: screenHeight*0.138,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

                Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.book,
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: (){
                                                          Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => LessonPage() ));
                            }),
                        Text("Lessons", style: TextStyle(color: Colors.blue),)
                      ]),
                Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.quiz,
                              color: Colors.grey,
                            ),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: (){
                                                          Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => LessonPage() ));
                            }),
                        Text("Quiz")
                      ]),

            ]),
      ),

      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height:screenHeight*0.16,
            
            decoration: const BoxDecoration(

                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/homeBackground.jpg')
                        ,
                      ),            ),
        ) ,
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top:8.0, left:8, right:8, bottom:screenHeight*0.025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        
                    const Text('Fysics', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                
                    Builder(builder: (context) => IconButton(onPressed: () => scaffoldKey.currentState?.openEndDrawer(), icon: const Icon(Icons.settings, color: Colors.white,))),
                  ],
                ),
              ),
              Expanded(
                            child: Container(
                              color:Colors.white,
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                itemCount: categories.length,
                                itemBuilder: (context,index){
                                  return GestureDetector(
                                    child: ListTile(

                                    
                                        title:Text(
                                                
                                                categories[index].name,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18
                                                ),
                                                ),
                                            

                                        subtitle: Text(categories[index].subname,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                  fontSize: 17
                                                ),),
                                        
                                        trailing: Icon(Icons.arrow_right_rounded)
                                    ),
                                    onTap: (){
                                                          Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => categories[index].redirectPath ));
                            },
                                  );
                                } , 
                                separatorBuilder: (context,index) => const Divider(
                                  color: Colors.grey,
                                  thickness:0.15,
                                  indent:0,
                                  endIndent: 0,
                              
                                ),),
                            ),
                          ),
            ],
          ),
        ),
        ],
      ),
              
    );

  }
}