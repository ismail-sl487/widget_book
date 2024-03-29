import 'package:mceasy_widget/shared/popup_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class PermissionStyler {
  WidgetbookUseCase permissionBook() {
    return WidgetbookUseCase(
        name: "MEPermission",
        builder: (p0) => MEPermissionDialog(
              secondaryColor: p0.knobs
                  .list(label: "secondaryColor", options: colorOption),
              label: p0.knobs.string(
                  label: "label",
                  description: "Memberikan title pada popup",
                  initialValue:
                      "This app need permission location. Please choose allow all the time in permission location"),
              icon: p0.knobs.list(label: "icon", options: iconTheme),
            ));
  }
}
