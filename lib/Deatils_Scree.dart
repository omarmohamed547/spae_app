import 'package:flutter/material.dart';
import 'package:space_ass3/Stack_Home_AppBar.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class DeatilsScreen extends StatefulWidget {
  static const detailScreenId = "DeatilsScreen";
  String textPlanet;
  String image;
  String titleText;
  String detailsText;
  String textDistance;
  String length;
  String years;
  String radius;
  String mass;
  String gravity;
  String surfaceArea;

  DeatilsScreen(
      {required this.textPlanet,
      required this.titleText,
      required this.detailsText,
      required this.textDistance,
      required this.length,
      required this.years,
      required this.mass,
      required this.gravity,
      required this.surfaceArea,
      required this.radius,
      required this.image});

  @override
  State<DeatilsScreen> createState() => _DeatilsScreenState();
}

class _DeatilsScreenState extends State<DeatilsScreen> {
  Flutter3DController controller = Flutter3DController();

  @override
  void initState() {
    super.initState();
    controller.onModelLoaded.addListener(() {
      debugPrint('Model is loaded: ${controller.onModelLoaded.value}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  child: Image.asset("assets/images/earth 1 (1).png"),
            StackHomeAppBar(
              showButton: true,
              image: "assets/images/recDetailsAppBar.png",
              text1: widget.textPlanet,
              text2: "  ${widget.textPlanet}: ${widget.titleText}",
            ),
            SizedBox(
              height: 4,
            ),
            AspectRatio(
              aspectRatio: 1,
              child: Flutter3DViewer(
                progressBarColor: Colors.orange,
                activeGestureInterceptor: true,
                enableTouch: true,
                controller: controller,
                src: "assets/3d_images/earth.glb",
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "About",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 12, bottom: 12),
              child: Text(
                widget.detailsText,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            AttributersTextPlanet(
              textAttribute: widget.textDistance,
            ),
            AttributersTextPlanet(
              textAttribute: widget.length,
            ),
            AttributersTextPlanet(
              textAttribute: widget.years,
            ),
            AttributersTextPlanet(
              textAttribute: widget.radius,
            ),
            AttributersTextPlanet(
              textAttribute: widget.mass,
            ),
            AttributersTextPlanet(
              textAttribute: widget.gravity,
            ),
            AttributersTextPlanet(
              textAttribute: widget.surfaceArea,
            ),
          ],
        ),
      ),
    );
  }
}

class AttributersTextPlanet extends StatelessWidget {
  String textAttribute;

  AttributersTextPlanet({
    required this.textAttribute,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textAttribute,
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
