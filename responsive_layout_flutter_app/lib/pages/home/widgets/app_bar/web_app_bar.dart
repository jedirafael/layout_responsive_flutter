import 'package:flutter/material.dart';
import 'package:responsive_layout_flutter_app/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('Flutter'),
            SizedBox(width: 32),
            WebAppBarResponsiveContent(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
            SizedBox(width: 24),
            SizedBox(
              height: 38,
              child: OutlinedButton(
                // borderSide: BorderSide(color: Colors.white, width: 2),
                child: Text("Fazer Login",
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 16
                    )),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 38,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 16)),
                onPressed: () {},
                child: Text('Cadastre-se'),
              ),
            )
          ],
        ));
  }
}
