import 'package:flutter/material.dart';
import 'shared_widgets.dart'; // Import shared widgets

class PhieuBaoHanhScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Phiếu bảo hành',
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Điều hướng về màn hình trước
          },
        ),
      ), // Use shared TopBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text('Nội dung Phiếu bảo hành'),
        ),
      ),
      bottomNavigationBar: BottomBar(), // Use shared BottomBar
    );
  }
}
