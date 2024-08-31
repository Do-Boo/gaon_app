import 'package:flutter/material.dart';
import 'package:gaon_app/functions/f_custom_icons.dart';
import 'package:gaon_app/gets/g_navigationbar_controller.dart';
import 'package:gaon_app/pages/p_home.dart';
import 'package:gaon_app/widgets/w_button.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final NavigationController controller = Get.put(NavigationController());

    final List<Map<String, dynamic>> buttonData = [
      {'icon': HugeIcons.strokeRoundedHome11, 'selectedIcon': ActiveIcons.home, 'onPressed': () => Get.toNamed("home")},
      {'icon': HugeIcons.strokeRoundedSearch01, 'selectedIcon': HugeIcons.strokeRoundedSearch01, 'onPressed': () => Get.toNamed("search")},
      {'icon': HugeIcons.strokeRoundedPlusSign, 'selectedIcon': HugeIcons.strokeRoundedPlusSign, 'onPressed': () => debugPrint("plus")},
      {'icon': HugeIcons.strokeRoundedFavourite, 'selectedIcon': ActiveIcons.favourite, 'onPressed': () => debugPrint("favourite")},
      {'icon': HugeIcons.strokeRoundedUser, 'selectedIcon': ActiveIcons.user, 'onPressed': () => debugPrint("user")},
    ];

    return Obx(() {
      return NavigationBar(
        height: 64,
        destinations: List.generate(buttonData.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {
                buttonData[index]["onPressed"]();
                controller.selectedIndex = index;
              },
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              color: index == 2 ? theme.hintColor.withOpacity(0.1) : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              child: index == controller.selectedIndex
                  ? HugeIcon(
                      icon: buttonData[index]["selectedIcon"],
                      color: theme.hintColor,
                      size: 32,
                    )
                  : HugeIcon(
                      icon: buttonData[index]["icon"],
                      color: theme.hintColor.withOpacity(index == 2 ? 0.7 : 0.5),
                      size: 32,
                    ),
            ),
          );
        }),
      );
    });
  }
}
