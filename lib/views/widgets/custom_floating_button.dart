import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: const Color.fromARGB(255, 37, 35, 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          context: context,
          builder: (context) {
            return ModelBottomWidget();
          },
        );
      },
      backgroundColor: Colors.cyanAccent,
      // shape: CircleBorder(),
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}

class ModelBottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
