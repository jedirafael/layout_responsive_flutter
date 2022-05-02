import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter_app/breakpoints.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidht = constraints.maxWidth;
      if (maxWidht >= tabletBreakPoint) {
        return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://img.ibxk.com.br/2021/01/13/13184201318384.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      width: 400,
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Rafael Araújo",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ));
      }
      if (maxWidht >= mobileBreakPoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                    "https://img.ibxk.com.br/2021/01/13/13184201318384.jpg",
                    fit: BoxFit.cover),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: const [
                        Text(
                          "Aprenda Flutter com este curso",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Bora aprender Flutter com o professor Rafael Araújo",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomSearchField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
      return Column(
        children: [
         AspectRatio(
           aspectRatio: 3.4,
           child: Image.network(
                "https://img.ibxk.com.br/2021/01/13/13184201318384.jpg",
                fit: BoxFit.cover),
         ),
          Padding(padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aprenda Flutter com este curso",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                "Bora aprender Flutter com o professor Rafael Araújo",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              CustomSearchField()
            ],
          ),

          )
        ],
      );
    });
  }
}
