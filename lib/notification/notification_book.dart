import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/main.dart';
import 'package:mceasy_widget/shared/button_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bot_toast/bot_toast.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showToastBar(context, message: "sadas", title: "asdadsads");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}

class NotificationStyler {
  WidgetbookUseCase notificationBook() {
    return WidgetbookUseCase(
        name: "MENotification", builder: (p0) => const MyWidget());
  }
}

void showToastBar(context, {required String message, required String title}) {
  BotToast.showAttachedWidget(
      attachedBuilder: (_) {
        return Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                        offset: (Offset(0, 3)),
                        blurRadius: 12,
                        color: Colors.white10)
                  ]),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 76, maxHeight: 95),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Image.asset(
                          "assets/icon/icon.png",
                          width: 35,
                        )),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            METext(
                              letterSpacing: 0.2,
                              height: 1.5,
                              text: title,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: secondaryColor,
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      duration: const Duration(seconds: 4),
      target: const Offset(520, 520));
}
