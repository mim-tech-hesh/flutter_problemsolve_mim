import 'package:flutter/material.dart';

class SlideDrawer extends StatefulWidget {
  @override
  _SlideDrawerState createState() => _SlideDrawerState();
}

class _SlideDrawerState extends State<SlideDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController ctrl;
  late Animation<Offset> anim;

  @override
  void initState() {
    super.initState();
    ctrl = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    anim = Tween(
      begin: Offset(-1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: ctrl, curve: Curves.easeInOut));
  }

  void toggle() => ctrl.isDismissed ? ctrl.forward() : ctrl.reverse();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Ani")),
      body: Stack(
        children: [
          Center(child: ElevatedButton(onPressed: toggle, child: Text("Menu"))),
          SlideTransition(
            position: anim,
            child: Container(
              width: 250,
              height: double.infinity,
              color: Colors.grey[800],
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: toggle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }
}
