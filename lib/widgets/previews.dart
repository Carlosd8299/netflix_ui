import 'package:flutter/material.dart';

import '../models/content_model.dart';
import '../models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;

  const Previews({
    Key key,
    @required this.title,
    @required this.contentList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        Container(
          height: 165,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final Content content = contentList[index];
              return GestureDetector(
                onTap: () => print(content.name),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(content.imageUrl),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(color: content.color, width: 4),
                      ),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: SizedBox(
                          height: 60,
                          child: Image.asset(content.titleImageUrl),
                        )),
                  ],
                ),
              );
            },
            itemCount: contentList.length,
          ),
        ),
      ],
    );
  }
}
