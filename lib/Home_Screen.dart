import 'package:flutter/material.dart';
import 'package:space_ass3/Deatils_Scree.dart';
import 'package:space_ass3/Stack_Home_AppBar.dart';

class HomeScreen extends StatefulWidget {
  static const homeScreenId = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  final List<Widget> pages = [
    Image.asset("assets/images/earth 1.png"),
    Image.asset("assets/images/earth 1 (1).png")
  ];

  void nextItemPage() {
    if (_currentPageIndex < pages.length - 1) {
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  String returnText() {
    String text = "";
    if (_currentPageIndex == 0) {
      text = "Earth";
    } else {
      text = "Mercury";
    }
    return text;
  }

  void perviousItemPage() {
    if (_currentPageIndex > 0) {
      _currentPageIndex--;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void navigateToDetailsScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (_currentPageIndex == 0) {
        return DeatilsScreen(
          textPlanet: returnText(),
          image: "assets/3d_images/earth.glb",
          titleText: "Our Blue Marble",
          detailsText:
              "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
          textDistance: "Distance from Sun (km):149,598,026",
          length: "Length of Day (hours):23.93",
          years: "Orbital Period (Earth years):1",
          radius: "Radius (km):6,371",
          mass: "Mass (kg):5.972 × 10²⁴",
          gravity: "Gravity (m/s²):9.81",
          surfaceArea: "Surface Area (km²):5.10 × 10⁸",
        );
      } else {
        return DeatilsScreen(
          textPlanet: returnText(),
          image: "assets/3d_images/mercury.glb",
          titleText: "The Closest Planet",
          detailsText:
              "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
          textDistance: "Distance from Sun (km):57,909,227",
          length: "Length of Day (hours):1,407.60",
          years: "Orbital Period (Earth years):0.24",
          radius: "Radius (km):2,439.70",
          mass: "Mass (kg):3.301 × 10²³",
          gravity: "Gravity (m/s²):3.7",
          surfaceArea: "Surface Area (km²):7.48 × 10⁷",
        );
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackHomeAppBar(
              image: "assets/images/Rectangle 1.png",
              text1: "Explore",
              text2: "  Which planet \n  would you like to explore?"),
          Expanded(
            child: PageView(
              children: pages,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xffEE403D)),
                  onPressed: () {
                    perviousItemPage();
                  },
                  child: Image.asset("assets/icons/Arrow 3.png"),
                ),
                Text(
                  returnText(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Color(0xffEE403D)),
                  onPressed: () {
                    nextItemPage();
                  },
                  child: Image.asset("assets/icons/Arrow 1.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEE403D)),
                onPressed: () {
                  navigateToDetailsScreen();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        " Explore ${returnText()}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Image.asset("assets/icons/Arrow 1.png")
                  ],
                )),
          )
        ],
      ),
    );
  }
}
