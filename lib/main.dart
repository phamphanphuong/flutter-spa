import 'package:ebiz_spa/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => EbizSpaApp(), // Wrap your app
      ),
    );

class EbizSpaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Test(),
      // home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.tealAccent), // Harmonized color
      ),
    );
  }
}
