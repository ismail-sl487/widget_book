import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:widget_book/theme.dart';
import 'package:widgetbook/widgetbook.dart';

import '../shared/text_widget.dart';

class PopupStyler {
  WidgetbookUseCase versionUpatePopup(){
   return WidgetbookUseCase(name: "VersionUpdatePopup", builder: (context) => 
    SimpleDialog(
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      children: [
        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const WidgetText(
                    text: 'Pembaruan Aplikasi',
                    fontSize: 16,
                    color: primaryColor,
                  ),
                  Visibility(
                    visible: context.knobs.boolean(label: "isForceUpdate",description: "Untuk memilih popup wajib melakukan update atau tidak"),
                    child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: const Icon(
                        EvaIcons.close,
                        color: primaryColor,
                        size: 24,
                      ),
                    ),
                                  ),
                  ),
                ],
              ),
              const Padding(
                padding:  EdgeInsets.only(bottom: 1,top: 6),
                child: Divider(),
              ),
              context.knobs.boolean(label: "isForceUpdate",description: "")
                  ? const WidgetText(
                      text:
                          'Aplikasi telah merilis versi terbaru. Silahkan perbarui aplikasi untuk dapat menggunakan kembali.',
                      fontSize: 14,
                      heightSpacingText: 1.5,
                      color: Colors.grey,
                    )
                  : const WidgetText(
                      text:
                          'Aplikasi merekomendasikan Anda untuk memperbarui aplikasi ke versi terbaru. Anda dapat terus menggunakan aplikasi saat mengunduh pembaruan.',
                      fontSize: 14,
                      heightSpacingText: 1.5,
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
                        visible:!context.knobs.boolean(label: "isForceUpdate",description: ""),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  padding: const EdgeInsets.all(8.5),
                                  child: const Center(
                                    child: WidgetText(
                                      text: 'Nanti Saja',
                                      color: primaryColor,
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
                        onTap: () {
                          // ignore: todo
                          //TODO: Gunakan URL yang benar untuk mceasyu mcsol
                          // launchUrl(
                          //   Uri.parse(
                          //     'market://details?id=com.mceasy.tms_driver_app',
                          //   ),
                          // );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(
                              color: primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.all(8.5),
                          child: const Center(
                            child: WidgetText(
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
    ),);
  }
}