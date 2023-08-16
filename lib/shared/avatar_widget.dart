import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/badge_widget.dart';
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
              decoration: BoxDecoration(
                color: bgcolor != null? bgcolor!.withOpacity(0.2) : Colors.blueAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
                child: Center(
                  child: MCText(text: initial??'',color: bgcolor??Colors.blueAccent,fontWeight: FontWeight.w600,fontSize: avatarLabelSize(size: avatarSize??AvatarSize.medium) ,)
                  
                ),
            ),
          ),
        ),
        MCBadge(
          positioned: badgePositioned,
          badgecolor: badgeColor,
          badgeSize: avatarbadgeSize(size: avatarSize??AvatarSize.medium),
        )
      ],
    );
  }
}