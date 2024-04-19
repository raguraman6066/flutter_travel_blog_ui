import 'package:flutter/material.dart';
import 'package:travel_app_ui_flutter/detail_page.dart';
import 'package:travel_app_ui_flutter/models/travel.dart';

class generateTravelBlog extends StatelessWidget {
  generateTravelBlog({super.key});

  final list = Travel.generateTravelBlog();
  final pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageCtrl,
      itemCount: list.length,
      itemBuilder: (context, index) {
        var travel = list[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    travel: travel,
                  ),
                ));
          },
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, right: 20.0, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    width: double.infinity,
                    travel.url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 80,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Text(
                          travel.location,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Text(
                          travel.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                bottom: 0,
                right: 30,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
