import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';


class TextFieldStyler {
  WidgetbookUseCase textfieldBook(){
    return WidgetbookUseCase(name: "McEasyTextField", builder: (context) => 
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 10),
        child: SizedBox(
          width: context.knobs.slider(label: "width",description: "Mengubah panjang textfield",initialValue: 300,max: 1000,min: 50),
          height: context.knobs.slider(label: "height",description: "Mengubah lebar textfield",initialValue: 35,max: 80,min: 20),
          child: TextFormField(
            enabled: context.knobs.boolean(label: "enabled",initialValue: true),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
              prefixIcon:  Icon(Icons.add_location_alt_outlined, size: context.knobs.number(label: "preffixSizeIcon",initialValue: 12).toDouble(),),
              suffixIcon: context.knobs.boolean(label: "suffixIcon",description: "Digunakan untuk membuat icon pada sisi kanan") ? IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined,size: context.knobs.number(label: "suffixSizeIcon",initialValue: 12).toDouble(),)) : const SizedBox(),
              hintText: context.knobs.text(label: "hintText",description: "Untuk menentukan placeholder pada textfield",initialValue: "Placeholder..."),
              hintStyle: const TextStyle(fontSize: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.knobs.number(label: "borderRadius",initialValue: 6).toDouble()),
                borderSide: BorderSide(
                  width: context.knobs.number(initialValue: 80,label: "borderRadius").toDouble(),
                  // style: BorderStyle.none,
                ),
              ),
            )
          ),
        ),
      )
    );
  }

  WidgetbookUseCase textfieldBookBottomLine(){
    return WidgetbookUseCase(name: "McEasyTextFieldLine", builder: (context) => 
      Padding(
        padding: const EdgeInsets.only(top: 20,left: 10),
        child: SizedBox(
          width: context.knobs.slider(label: "width",description: "Mengubah panjang textfield",initialValue: 300,max: 1000),
          height: context.knobs.slider(label: "height",description: "Mengubah lebar textfield",initialValue: 35,max: 80,min: 20),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.knobs.options(
                  label: "enableBorderColor",
                  description: "Mengganti warna pada border ketika aktif",
                  options: const [
                    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                    Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  ]
                )),),  
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: context.knobs.options(
                  label: "disableBorderColor",
                  description: "Mengganti warna pada border ketika tidak aktif",
                  options: const [
                    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                    Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  ]
                )),),  
            )
          ),
        ),
      )
    );
  }
}