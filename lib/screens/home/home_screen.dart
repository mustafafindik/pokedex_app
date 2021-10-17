import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/data/category_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var searchInputController = TextEditingController();
    var categories= getCategories();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                width: size.width,
                height: size.height*0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 125,
                    ),
                    Text(
                      "What Pokemon \nare you looking for?",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: kDefaultPadding*2),
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,

                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 50,
                              color: kLightTextColor.withOpacity(0.23),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: searchInputController,
                          autofocus: false,
                          onChanged: (value) {
                            print(value);
                          },
                          decoration:   const InputDecoration(
                            hintText: "Search Pokemon..",
                            hintStyle: TextStyle(
                              color: kIconColor,
                              fontSize: 15
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.black,),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Positioned(
                top: -50,
                right: -90,
                child: SvgPicture.asset(
                  'assets/icons/pokeball.svg',
                  color: Colors.grey.shade200,
                  height: 250,
                ),
              ),
            ],
          ),
          Container(
            height: size.height*0.35,
            color: Colors.white,
            padding:  EdgeInsets.symmetric(horizontal:kDefaultPadding/2),
            child: GridView.builder(
              padding:  EdgeInsets.all(0),
              shrinkWrap: true,
              physics: new NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2/1,
              ),
              itemCount: categories.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(kDefaultPadding/2),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          width: double.infinity,
                          height: 100,
                          margin: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: categories[index].color,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 3),
                                blurRadius: 40,
                                color: categories[index].color!.withOpacity(.55)
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Text(categories[index].name,
                                style:TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                      Positioned(top: -15,
                        right: -30,
                        child: SvgPicture.asset(
                          'assets/icons/pokeball.svg',
                          color: Colors.white.withOpacity(0.08),
                          height: 110,
                        ),)
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
