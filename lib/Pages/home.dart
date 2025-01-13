import 'dart:ui';

import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/pokemon_model.dart';
import 'package:fitness/models/popular_league.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'FirePage.dart';
import 'ElectricPage.dart';
import 'GrassPage.dart';
import 'WaterPage.dart';
import 'JhotoPage.dart';
import 'IndigoPage.dart';
import 'OrangePage.dart';
import 'package:url_launcher/url_launcher.dart';



class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<ItemModel> items = [];
  List<PopularLeague> popularLeague = [];

  void _getPopularLeagues(){
    popularLeague = PopularLeague.getPopularLeague();
  }

  void _getCategories(){
    setState(() {
      categories = CategoryModel.getCategories();
    }); 
  }

  void _getItems(){
    setState(() {
      items = ItemModel.getItems();
    }); 
  }


  @override
  void initState(){
    super.initState();
    _getCategories();
    _getItems();
    _getPopularLeagues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Pokemon',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
            
             child : Container(
              margin: container(),
              alignment: Alignment.center,
              child:SvgPicture.asset('assets/icons/one.svg',
                height: 20,
                width: 20,
              ),
              decoration: BoxDecoration(
                color: Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)
              ),
            ) ,
            );
          }
        ),
        actions: [
          GestureDetector(
            onTap: (){

            },
        
            child :Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child:SvgPicture.asset('assets/icons/two.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          ),
        ],
      ),
        backgroundColor: Colors.white,

        body: ListView(
          children: [
            _searchField(),
            SizedBox(height: 40,),
            _categoriesSection(),
            SizedBox(height: 40,),
            _itemSection(),
            SizedBox(height: 40,),
            _popularleagueSection()


          ],
        ),
        drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 129, 207, 131),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "SHAH",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("u2204013_shah_ash@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
             //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Pokemons '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My Badges '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Call to Palete town '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Column _popularleagueSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding( 
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ListView.separated(
                itemCount: popularLeague.length,
                shrinkWrap: true,
                separatorBuilder: (context,index) => SizedBox(height: 25,),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20
                ),
                itemBuilder: (context, index){
                  return Container(
                  height : 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        popularLeague[index].iconPath,
                        height: 65,
                        width: 65,
                        ),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularLeague[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color : Colors.black,
                              fontSize: 16
                            ),
                          ),
                          Text(
                            popularLeague[index].difficulites + '|' + popularLeague[index].duration + '|'+popularLeague[index].partners,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color : Color(0xff7B6F72),
                              fontSize: 13,
                              
                            )
                          ),
                        ],
                      ),
                    GestureDetector(
                            onTap: (){
                              if(popularLeague[index].name == 'Indigo'){
                                Navigator.push(
                                  context,
                                   MaterialPageRoute(builder:(context) => IndigoPage()),
                                );
                              } else if (popularLeague[index].name == 'Orange') {
                                  Navigator.push(
                                  context,
                                 MaterialPageRoute(builder: (context) => OrangePage()),
                                );
                              } else if (popularLeague[index].name == 'Jhoto') {
                                Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => JhotoPage()),
                                );
                              }
                            },
                            child: SvgPicture.asset(
                              'assets/icons/enter-svgrepo-com.svg',
                              width: 30,
                              height: 30,
                            
                            ),
                          )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: popularLeague[index].boxIsSelected ? Colors.white:Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow:popularLeague[index].boxIsSelected? [
                      BoxShadow(
                        color : Color(0xff1D1617).withOpacity(0.07),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0
                      )
                    ] : []
                  ),
                  );
                },
              )

            ],

          );
  }

  Future<void> _launchUrl(String url) async {
    print("Launching URL");
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw Exception('Could not launch $url');
  }
}

  Column _itemSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Items\nYou need',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: const Color.fromARGB(0, 33, 149, 243),
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context,index){
                    return Container(
                      width : 210,
                      decoration: BoxDecoration(
                        color: items[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        SvgPicture.asset(items[index].iconPath,
                          height: 100,
                        ),
                        Column(
                          children: [
                            Text(
                              items[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16
                              ),
                            ),
                            Text(
                          items[index].level + ' | ' +items[index].fightTime + ' | ' + items[index].weakness,
                          style: TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                          ],
                        ),
                        
                        
                        GestureDetector(
                          onTap: () async{
                            try{
                              await _launchUrl(items[index].externalLink);
                            } catch (e){
                              print('Error');
                            }

                            
                          },
                          child: Container(
                            height: 45,
                            width: 130,
                            child: Center(
                              child: Text(
                                'View',
                                style: TextStyle(
                                  color: items[index].viewIsSelected ? Colors.white : Color(0xffC58BF2),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                                ),
                              )
                          
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  items[index].viewIsSelected ?Color(0xff9DCEFF) : Colors.transparent,
                                  items[index].viewIsSelected ?Color(0xff92A3FD) : Colors.transparent
                                ] 
                              ),
                              borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                        )
                        ] 
                      ),

                    );
                    

                  }, 
                  separatorBuilder: (context,index) => SizedBox(width: 25,), 
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  ),
              )
            ],
          );
  }

  Column _categoriesSection() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 120,
                child: ListView.separated(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  separatorBuilder: (context,index) => SizedBox(width: 25,),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        if (categories[index].name == 'Fire') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirePage()),
                  );
                } else if (categories[index].name == 'Electric') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ElectricPage()),
                  );
                } else if (categories[index].name == 'Grass') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GrassPage()),
                  );
                } else if (categories[index].name == 'Water') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WaterPage()),
                  );
                }
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: categories[index].boxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(categories[index].iconPath),
                              ),
                            ),
                            Text(
                              categories[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14
                      
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
  }

  AppBar appBar() {
    return AppBar(
        title: Text('Pokemon',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){},
        
         child : Container(
          margin: container(),
          alignment: Alignment.center,
          child:SvgPicture.asset('assets/icons/one.svg',
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
        ) ,
        ),
        actions: [
          GestureDetector(
            onTap: (){

            },
        
            child :Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            child:SvgPicture.asset('assets/icons/two.svg',
              height: 5,
              width: 5,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          ),
        ],
      );
  }

  EdgeInsets container() => EdgeInsets.all(10);
}

class _searchField extends StatelessWidget {
  const _searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(12),
          hintText: 'Search Pokemon',
          hintStyle: TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 14
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/icons/three.svg'),
          ) ,
          suffixIcon: Container(
            width: 10,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                    ),
              
                  
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset('assets/icons/four.svg')
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}