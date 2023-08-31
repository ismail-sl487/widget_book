import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/main.dart';
import 'package:mceasy_widget/shared/text_widget.dart';

class MEDialogVersion extends StatelessWidget {
  const MEDialogVersion({
    Key? key,
    this.isForcedUpdate = false,
    this.title = "",
    this.color = const Color(0xFF0D4491),
  }) : super(key: key);

  final bool isForcedUpdate;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            METext(
              text: 'Pembaruan Aplikasi',
              fontSize: 16,
              color: color,
            ),
            Visibility(
              visible: isForcedUpdate,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(3),
                  child: Icon(
                    EvaIcons.close,
                    color: color,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 1, top: 6),
          child: Divider(),
        ),
        METext(
          text: title,
          fontSize: 14,
          height: 1.5,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Visibility(
                  visible: !isForcedUpdate,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () async {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: color,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: const EdgeInsets.all(8.5),
                            child: Center(
                              child: METext(
                                text: 'Nanti Saja',
                                color: color,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      border: Border.all(
                        color: color,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(8.5),
                    child: const Center(
                      child: METext(
                        text: 'Perbarui',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MEFailedDialog extends StatelessWidget {
  const MEFailedDialog({
    Key? key,
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.backgroundOpacity = const Color(0xFF0D4491),
    this.icon = const SizedBox(),
    this.title = "",
    this.subtitle = "",
  }) : super(key: key);

  final Color backgroundColor, backgroundOpacity;
  final Widget icon;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      alignment: Alignment.center,
      children: [
        SizedBox(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: backgroundOpacity,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(40.0))),
                          child: Center(
                            child: icon,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    METext(
                      textAlign: TextAlign.center,
                      text: title,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: backgroundColor,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                        child: METext(
                      text: subtitle,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      height: 1.5,
                    )),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(navigatorKey.currentState!.context);
              },
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.clear,
                  color: Colors.grey,
                  size: 26,
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}

class MEPermissionDialog extends StatelessWidget {
  const MEPermissionDialog({
    Key? key,
    this.label = "",
    this.secondaryColor = Colors.black26,
    this.icon,
  }) : super(key: key);

  final Color secondaryColor;
  final String label;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Icon(
            icon,
            color: Colors.white,
            size: 50,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: METext(
            text: label,
            fontSize: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () async {},
                child: const METext(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  text: 'CANCEL',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                onPressed: () async {},
                child: const SizedBox(
                  child: METext(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    text: 'ENABLE',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
