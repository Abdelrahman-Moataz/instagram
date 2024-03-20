import 'package:instagram/constants/constants.dart';
import 'package:instagram/screens/home_screen/home_screen.dart';
import 'package:instagram/screens/post_screen/post_screen.dart';
import 'package:instagram/screens/profile_screen/profile_screen.dart';
import 'package:instagram/screens/search_screen/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 0;
  final List pageList = [const Home(),const SearchScreen(),const AddPostScreen(),const ProfileScreen(),];
  void selectPage(int index){
    selected = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selected],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        currentIndex: selected,
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 26,
                color: Colors.white,
              ),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 26,
                color: Colors.white,
              ),
              label: "Search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 26,
                color: Colors.white,
              ),
              label: "Add Post",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 26,
                color: Colors.white,
              ),
              label: "Profile",
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
