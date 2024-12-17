import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String? initialValue;
  final int maxLines;
  final bool enabled;

  const LabeledTextField({
    required this.label,
    this.initialValue,
    this.maxLines = 1,
    this.enabled = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        TextField(
          enabled: enabled,
          maxLines: maxLines,
          controller: initialValue != null ? TextEditingController(text: initialValue) : null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
        ),
      ],
    );
  }
}

/* Sử dụng:
LabeledTextField(label: "Mã khách:"),
LabeledTextField(label: "Ghi chú:", maxLines: 2),
LabeledTextField(label: "Tên khách:", initialValue: "Nguyễn Văn A"),
*/