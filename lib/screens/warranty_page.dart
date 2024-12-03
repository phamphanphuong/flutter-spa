import 'package:flutter/material.dart';

class WarrantyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phiếu bảo hành'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.person, size: 80),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Chọn khách')),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('Lịch sử bảo hành')),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Ghi chú',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16), // Thay Spacer bằng SizedBox
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Lưu')),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Quay lại'),
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
