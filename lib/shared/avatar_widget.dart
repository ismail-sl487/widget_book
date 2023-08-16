import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mceasy_widget/shared/text_widget.dart';

import '../theme.dart';

class MCAvatar extends StatelessWidget {
  const MCAvatar({super.key, this.badgePositioned, this.initial,this.bgcolor,required this.badgeColor,this.images,this.avatarSize});
  final PositionBadge? badgePositioned;
  final String? initial;
  final Color? bgcolor;
  final Color badgeColor;
  final String? images;
  final AvatarSize? avatarSize; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [Container(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: images != '' ? 
              FadeInImage.assetNetwork(
                imageErrorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/images/me.png',width: getAvatarSize(size: avatarSize??AvatarSize.medium),);
                },
                placeholder: 'assets/images/me.png', 
                image: images??'',
                fit: BoxFit.cover,
                height: getAvatarSize(size: avatarSize??AvatarSize.medium),
                width: getAvatarSize(size: avatarSize??AvatarSize.medium),
              ) : 
              Container(
                height: getAvatarSize(size: avatarSize??AvatarSize.medium),
                width: getAvatarSize(size: avatarSize??AvatarSize.medium),
                child: Center(
                  child: MCText(text: initial??'',color: bgcolor??Colors.blueAccent,fontWeight: FontWeight.w600,fontSize: avatarLabelSize(size: avatarSize??AvatarSize.medium) ,)
                  
                ),
              decoration: BoxDecoration(
                color: bgcolor != null? bgcolor!.withOpacity(0.2) : Colors.blueAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        CustomBadge(
          positioned: badgePositioned,
          badgecolor: badgeColor,
          badgeSize: avatarbadgeSize(size: avatarSize??AvatarSize.medium),
        )
      ],
    );
  }
}

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    Key? key,
    required this.positioned,
    required this.badgecolor,
    this.badgeSize,
    this.label,
    this.labelSize = 10,
    this.labelColor = Colors.black87,
    
  }) : super(key: key);

  final PositionBadge? positioned;
  final String? label;
  final double labelSize;
  final double? badgeSize;
  final Color labelColor;
  final Color badgecolor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: positioned == PositionBadge.topLeft || positioned == PositionBadge.topRight ? 10 : null ,
      bottom: positioned == PositionBadge.bottomLeft || positioned == PositionBadge.bottomright? 10:null,
      right: positioned == PositionBadge.bottomright || positioned == PositionBadge.topRight? 8:null,
      left: positioned == PositionBadge.bottomLeft || positioned == PositionBadge.topLeft? 8 : null,
      child: Container(
        decoration: BoxDecoration(
          color: label != null? null : Colors.white,
          borderRadius: BorderRadius.circular(100)
        ),
        width: badgeSize,
        height: badgeSize,
        constraints: const BoxConstraints(
          minHeight: 14,
          minWidth: 14
        ),
        child: Container(
            margin: const EdgeInsets.all(2.5),
            padding: const EdgeInsets.only(top: 4,bottom: 2,left: 5,right: 5),
            decoration: BoxDecoration(
            color: badgecolor,
            borderRadius: BorderRadius.circular(100)
          ),
          child: label != null? Align(alignment: Alignment.center,child: MCText(textAlign: TextAlign.center,text: label??'',fontSize: labelSize,color: labelColor,)) : null,
        ),
      )
    );
  }
}
