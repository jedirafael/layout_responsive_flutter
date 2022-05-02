import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.grey[500]),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquisa de nome',
                          isCollapsed: true),
                    ),
                  )
                ],
              ),
            ),
          ),
          if (constraints.maxWidth >= 400) ...[
            const SizedBox(width: 32),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Aprender",
                  style: TextStyle(color: Colors.white),
                ))
          ],
          if (constraints.maxWidth >= 500) ...[
            const SizedBox(width: 8),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Flutter",
                  style: TextStyle(color: Colors.white),
                ))
          ]
        ],
      );
    }));
  }
}
