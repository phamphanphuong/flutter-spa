import 'package:flutter/material.dart';
import 'phieu_bao_hanh_screen.dart'; // Import PhieuBaoHanhScreen
import 'phieu_ban_hang_screen.dart'; // Import PhieuBanHangScreen
import 'shared_widgets.dart'; // Import shared widgets

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'E-biz SPA',
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Điều hướng về màn hình trước
          },
        ),
      ), // Use shared TopBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildCustomButton(
              context,
              'Phiếu bán hàng',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhieuBanHangScreen()),
                );
              },
            ),
            SizedBox(height: 16),
            _buildCustomButton(
              context,
              'Phiếu bảo hành',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhieuBaoHanhScreen()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(), // Use shared BottomBar
    );
  }

  // Hàm xây dựng nút nhấn tùy chỉnh
  Widget _buildCustomButton(BuildContext context, String text,
      {required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.tealAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8.0,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
