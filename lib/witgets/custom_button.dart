import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text; // Văn bản hiển thị trên nút
  final Color backgroundColor; // Màu nền
  final Color textColor; // Màu chữ
  final VoidCallback onPressed; // Hành động khi bấm nút
  final double borderRadius; // Bo góc
  final EdgeInsets padding; // Khoảng cách bên trong nút
  final double? width; // Chiều rộng của nút (có thể null)
  final double? height; // Chiều cao của nút (có thể null)

  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.borderRadius = 5.0, // Giá trị mặc định cho bo góc
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Padding mặc định
    this.width, // Không bắt buộc
    this.height, // Không bắt buộc
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Nếu null, nút tự ôm theo text
      height: height, // Nếu null, nút tự điều chỉnh chiều cao theo nội dung
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          elevation: 4,
          shadowColor: Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

/* Sử dụng:
CustomButton(
  text: "Xóa",
  backgroundColor: Colors.orange,
  textColor: Colors.black,
  width: 120,
  height: 50,
  onPressed: () => print("Xóa"),
)
*/
