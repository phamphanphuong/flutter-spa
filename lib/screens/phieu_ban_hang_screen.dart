import 'package:ebiz_spa/screens/shared_widgets.dart';
import 'package:flutter/material.dart';

class PhieuBanHangScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phiếu bán hàng'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Điều hướng về màn hình trước
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    // Avatar
                    width: 100,
                    height: 100,
                    color: Colors.blue[300],
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      // Chon khach - Xem thong tin
                      child: Container(
                    color: Colors.blue[200],
                    child: Text('Chọn khách - Xem thông tin'),
                  )),
                  SizedBox(width: 16),
                  Expanded(
                      // Ngay dat
                      child: Container(
                    color: Colors.blue[100],
                    child: Text('Ngày đặt'),
                  )),
                  SizedBox(width: 16),
                  Expanded(
                      // Ma phieu
                      child: Container(
                    color: Colors.blue[50],
                    child: Text('Mã phiếu'),
                  )),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Ghi chú',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nhân viên',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Table(
                border: TableBorder.all(color: Colors.grey),
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                  4: FlexColumnWidth(2),
                  5: FlexColumnWidth(2),
                  6: FlexColumnWidth(2),
                  7: FlexColumnWidth(2),
                  8: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    children: [
                      _buildTableHeaderButton(context, 'Thêm gói'),
                      _buildTableHeaderButton(context, 'Thêm DV'),
                      _buildTableHeaderButton(context, 'Thêm SP'),
                      _buildTableHeaderButton(context, 'Thêm thẻ'),
                      _buildTableHeaderButton(context, 'Chính sách giảm'),
                      _buildTableHeaderButton(context, 'Ghi chú'),
                      _buildTableHeaderButton(context, 'Chọn hình'),
                      _buildTableHeaderButton(context, 'Thêm khách'),
                      _buildTableHeaderButton(context, 'Nguồn khách hàng'),
                    ],
                  ),
                  TableRow(
                    children: List.generate(
                      9,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Sample'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Cộng: 0', style: TextStyle(fontSize: 16)),
                    Text('Giảm hoá đơn: 0', style: TextStyle(fontSize: 16)),
                    Text('Thành tiền: 0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(), // Use shared BottomBar
    );
  }

  Widget _buildTableHeaderButton(BuildContext context, String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.blue,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
