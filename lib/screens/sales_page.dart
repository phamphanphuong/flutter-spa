import 'package:flutter/material.dart';

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phiếu bán hàng'),
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
                          onPressed: () {}, child: const Text('Xem thông tin')),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Lịch sử')),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('Thẻ thành viên')),
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
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Thêm gói')),
                ElevatedButton(onPressed: () {}, child: const Text('Thêm DV')),
                ElevatedButton(onPressed: () {}, child: const Text('Thêm SP')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Chính sách giảm')),
                ElevatedButton(onPressed: () {}, child: const Text('Ghi chú')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Chọn hình')),
              ],
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
                    backgroundColor: Colors
                        .blueAccent, // Sửa `primary` thành `backgroundColor`
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
