import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CardList()));

class CardList extends StatelessWidget {
  final lst = List.generate(
    5,
    (i) => {
      "img": "https://via.placeholder.com/150",
      "title": "Item $i",
      "sub": "Subtitle $i",
      "desc": "This is a description of item $i.",
    },
  );

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Cards")),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (c, i) => AniCard(d: lst[i]),
      ),
    );
  }
}

class AniCard extends StatefulWidget {
  final Map d;
  AniCard({required this.d});

  @override
  _AniCardState createState() => _AniCardState();
}

class _AniCardState extends State<AniCard> {
  double e = 1.0;

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTapDown: (_) => setState(() => e = 0.95),
      onTapUp: (_) => setState(() => e = 1.0),
      onTapCancel: () => setState(() => e = 1.0),
      child: AnimatedScale(
        scale: e,
        duration: Duration(milliseconds: 200),
        child: Card(
          margin: EdgeInsets.all(10),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.d["img"],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.d["title"],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.d["sub"],
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      SizedBox(height: 6),
                      Text(widget.d["desc"], style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
