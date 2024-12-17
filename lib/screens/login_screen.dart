import 'package:flutter/material.dart';
import 'main_screen.dart'; // Import the main screen
import 'shared_widgets.dart'; // Import shared widgets

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: TopBar(title: 'E-biz SPA'), // Use shared TopBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController, // Add controller
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Tên đăng nhập',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController, // Add controller
              decoration: InputDecoration(
                labelText: 'Passwords',
                hintText: 'Mật khẩu',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (usernameController.text == '' &&
                        passwordController.text == '') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      );
                    } else {
                      // Handle invalid login
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid username or password')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, // Harmonized color
                  ),
                  child: Text('Đăng nhập'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Xử lý cấu hình
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, // Harmonized color
                  ),
                  child: Text('Cấu hình'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(), // Use shared BottomBar
    );
  }
}
