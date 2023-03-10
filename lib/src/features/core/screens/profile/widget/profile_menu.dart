import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../../../../constants/colors.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: tAccentColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: tAccentColor),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.titleMedium?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: const Icon(LineAwesomeIcons.angle_right,
                  size: 12.0, color: Colors.grey))
          : null,
    );
  }
}
