
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mboile_game/utility/colors.dart';
import 'package:mboile_game/view/flash-screen/flash-screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]
  );
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Nanu",
            primarySwatch: Colors.blue,
            accentColor: appColors.mainColor
          ),
          home: const FlashScreen(),
        );
      },

    );
  }
}
