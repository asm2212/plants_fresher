import 'package:flutter/material.dart';
import 'package:plants_fresher/common_widget/tab_button.dart';
import 'package:plants_fresher/screens/home_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      // backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: (){
            if(selectTab != 2){
              selectTab = 2;
              selectPageView = const HomeScreen();
            }if(mounted){
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selectTab == 2 ? Constants.primary : Constants.placeholder,
          child: Image.asset(
            "assets/images/home_tab.png",
            width: 30,
            height: 30,
          ),
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        surfaceTintColor: Constants.white,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            TabButton(
              onTap: (){
                if(selectTab != 0){
                  selectTab = 0;
                  selectPageView = const HomeScreen();
                }if(mounted){
                  setState(() {});
            }
              },
               title: "favorite", 
               isSelected: selectTab == 0, 
               icon: "assets/images/fav_tab.png",
               ),
          
                TabButton(
              onTap: (){
                if(selectTab != 1){
                  selectTab = 1;
                  selectPageView =  Container();
                }if(mounted){
                  setState(() {});
            }
              },
               title: "cart", 
               isSelected: selectTab == 1, 
               icon: "assets/images/cart_tab.png",
               ),
          
               const SizedBox(width: 40, height: 40,),
          
                TabButton(
              onTap: (){
                if(selectTab != 3){
                  selectTab = 3;
                  selectPageView = Container();
                }if(mounted){
                  setState(() {});
            }
              },
               title: "Profile", 
               isSelected: selectTab == 3, 
               icon: "assets/images/profile_tab.png",
               ),
          
            ],
          ),
        ),
      ),
    );
  }
}