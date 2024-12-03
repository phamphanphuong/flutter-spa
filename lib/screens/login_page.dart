import 'package:flutter/material.dart';
import  'main_screen_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng nhập'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Username input
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Tên đăng nhập',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Password input
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Login button
            ElevatedButton(
              onPressed: () {
                final username = _usernameController.text;
                final password = _passwordController.text;

                // Kiểm tra đăng nhập
                if (username == "admin" && password == "123") {
                  // Chuyển đến MainScreen nếu đăng nhập đúng
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                } else {
                  // Hiển thị thông báo lỗi nếu đăng nhập sai
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Đăng nhập thất bại'),
                      content: const Text(
                          'Tên đăng nhập hoặc mật khẩu không chính xác.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Đóng'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Đăng nhập'),
            ),
            const SizedBox(height: 16),
            // Configuration button
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('Chức năng Cấu hình đang được phát triển.')),
                );
              },
              child: const Text('Cấu hình'),
            ),
          ],
        ),
      ),
    );
  }
}

