import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 24, 0, 24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 48, 234, 234),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build your career with Mans',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 33,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16, bottom: 8),
            child: Text(
              'May8 , 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
