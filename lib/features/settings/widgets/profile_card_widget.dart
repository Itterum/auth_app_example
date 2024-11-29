import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.person,
                size: 30,
                color: Colors.grey,
              ),
            ),
            title: const Text(
              'Ryan Gosling',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('ryan.gosling@example.com'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 28),
            leading: const Icon(Icons.calendar_today, color: Colors.blue),
            title: Text(
              'You joined on ${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
            ),
          ),
        ],
      ),
    );
  }
}
