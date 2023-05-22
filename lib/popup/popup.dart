import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:widget_book/main.dart';
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
                  const MCText(
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
                  ? const MCText(
                      text:
                          'Aplikasi telah merilis versi terbaru. Silahkan perbarui aplikasi untuk dapat menggunakan kembali.',
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey,
                    )
                  : const MCText(
                      text:
                          'Aplikasi merekomendasikan Anda untuk memperbarui aplikasi ke versi terbaru. Anda dapat terus menggunakan aplikasi saat mengunduh pembaruan.',
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
                                    child: MCText(
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
                            child: MCText(
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


  WidgetbookUseCase failedDialog(){
  
    return WidgetbookUseCase(name: "MeFailedDialog", builder: (p0) => 
      SimpleDialog(
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2,
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(navigatorKey.currentState!.context).size.width,
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
                            color: p0.knobs.options(label: "secondaryColor", options: colorOption,description: "Merubah warna background icon").withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50))),
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration:  BoxDecoration(
                                color: p0.knobs.options(label: "secondaryColor", options: colorOption,description: "Merubah warna sekunder"),
                                borderRadius:const BorderRadius.all(Radius.circular(40.0))),
                            child: Center(
                              child: Icon(p0.knobs.options(label: "icon", options: const[
                                Option(label: "close", value: EvaIcons.close),
                                Option(label: "alert", value: EvaIcons.alertCircle),
                                Option(label: "stop", value: EvaIcons.stopCircle),
                              ]),
                                color: Colors.white, size: p0.knobs.number(label: "iconSize",initialValue: 50).toDouble()),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MCText(
                        textAlign: TextAlign.center,
                        text: p0.knobs.text(label: "title",initialValue: "Failed"),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: p0.knobs.options(label: "secondaryColor", options: colorOption,description: "Merubah warna tulisan pada title"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Center(child: 
                        MCText(text: p0.knobs.text(label: "subtitle",initialValue: "Gagal melakukan pengiriman data \n Mohon coba kembali"),
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.center,
                          height: 1.5,
                        )
                      ),
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
      ),
    );
  }

}