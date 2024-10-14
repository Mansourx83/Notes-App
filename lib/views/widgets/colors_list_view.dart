import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.tealAccent,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 33,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 40,
          );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentIndex = 0;

  List<Color> colors = [
    Colors.white,
    Colors.cyan,
    Colors.amber,
    Colors.purple,
    Colors.grey,
    Colors.blueGrey,
    const Color(0xFF98FF98),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(4),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
