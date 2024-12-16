import 'package:flutter/material.dart';
import 'package:my_flutter_app/admin/addFood_admin.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Admin!",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddFood()),
                      );
                    },
                    leading: Image.asset(
                      "images/food/comtam.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    title: const Text(
                      "Add Food Items",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text("Manage and add new food items."),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    tileColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 10.0),
                  ListTile(
                    onTap: () {
                      // Add more functionalities later
                    },
                    leading: const Icon(Icons.list, size: 50, color: Colors.deepPurple),
                    title: const Text(
                      "View Orders",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text("Check and manage customer orders."),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    tileColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 10.0),
                  ListTile(
                    onTap: () {
                      // Add more functionalities later
                    },
                    leading: const Icon(Icons.people, size: 50, color: Colors.deepPurple),
                    title: const Text(
                      "Manage Users",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text("View and manage users."),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    tileColor: Colors.grey[200],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
