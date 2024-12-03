import 'package:flutter/material.dart';

class CustomerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin khách hàng'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Mã'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Tên'),
              keyboardType: TextInputType.name,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Địa chỉ'),
              keyboardType: TextInputType.streetAddress,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Tỉnh'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Quận'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Giới tính'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Ngày sinh'),
              keyboardType: TextInputType.datetime,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Điện thoại'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Logic xử lý khi nhấn nút OK
                  },
                  child: const Text('OK'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.blueAccent, // Sửa primary thành backgroundColor
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
