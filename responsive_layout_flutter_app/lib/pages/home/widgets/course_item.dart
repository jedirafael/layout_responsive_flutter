import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
            "https://66.media.tumblr.com/9902fc4a91068a1c616fa18ef1279256/tumblr_ocg10gplqB1vctbbwo2_1280.png",
        fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 4,
        ),
        Flexible(
          child: AutoSizeText("Criação de apps Android e Ios com Flutter - Crie 16 apps safsfdsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white
              )),
        ),
        const Text("Rafael Araújo",
            style: TextStyle(
                color: Colors.grey
            )),
        const Text("R\$22,90",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white
            ))
      ],
    );
  }
}
