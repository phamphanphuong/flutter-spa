import 'package:flutter/material.dart';
import 'sales_page.dart';
import 'warranty_page.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Màn hình chính'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button "Phiếu bán hàng"

                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MainScreen()),
                  // );

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SalesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                backgroundColor: Colors.blue.shade50, // Màu nền giống giao diện
                elevation: 5, // Đổ bóng
              ),
              child: const Text(
                'Phiếu bán hàng',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
            
            const SizedBox(height: 20), // Khoảng cách giữa các nút
            // Button "Phiếu bảo hành"
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WarrantyPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                backgroundColor: Colors.blue.shade50, // Màu nền giống giao diện
                elevation: 5, // Đổ bóng
              ),
              child: const Text(
                'Phiếu bảo hành',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder cho SalesPage và WarrantyPage
// class SalesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Phiếu bán hàng'),
//       ),
//       body: const Center(
//         child: Text('Trang Phiếu Bán Hàng'),
//       ),
//     );
//   }
// }

// class WarrantyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Phiếu bảo hành'),
//       ),
//       body: const Center(
//         child: Text('Trang Phiếu Bảo Hành'),
//       ),
//     );
//   }
// }
