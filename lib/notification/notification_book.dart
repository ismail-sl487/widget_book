import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:widget_book/main.dart';
import 'package:widget_book/shared/button_widget.dart';
import 'package:widget_book/shared/text_widget.dart';
import 'package:widget_book/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:bot_toast/bot_toast.dart';


class NotificationStyler {
  
  WidgetbookUseCase notificationBook(){
    return WidgetbookUseCase(name: "MeNotification", builder: (p0) => 
        MeButton(
          onTap: (){
            showToastBar(navigatorKey.currentState!.context, message: "Example Text", title: "Lorem ipsum dolor sit amet");
          },
          label: "Toast",
          icon: EvaIcons.activity,
        )
    );
  }

}


void showToastBar(context,{required String message, required String title}) {
  BotToast.showAttachedWidget(
      attachedBuilder: (_) {
        return Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
            },
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
                            MCText(
                              letterSpacing: 0.2,
                              height: 1.5,
                              text: title,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: secondaryColor,
                            ),
                            SizedBox(height: 5),
                            
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
      duration: Duration(seconds: 4),
      target: Offset(520, 520));
}