import 'package:flutter/material.dart';
import 'package:gaon_app/widgets/w_button.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Get.theme;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(),
      bottomNavigationBar: NavigationBar(
        destinations: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {},
              borderRadius: BorderRadius.circular(16),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedHome10,
                color: theme.hintColor.withOpacity(0.5),
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {},
              borderRadius: BorderRadius.circular(16),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedSearch01,
                color: theme.hintColor.withOpacity(0.5),
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {},
              color: theme.hintColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedPlusSign,
                color: theme.hintColor.withOpacity(0.5),
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {},
              borderRadius: BorderRadius.circular(16),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedFavourite,
                color: theme.hintColor.withOpacity(0.5),
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Button(
              onPressed: () {},
              borderRadius: BorderRadius.circular(16),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedUser,
                color: theme.hintColor.withOpacity(0.5),
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                _buildHeader(theme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return SizedBox(
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.hintColor.withOpacity(0.1))),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 8),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Text("do.__.ou", textAlign: TextAlign.start, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 32,
                                width: 32,
                                child: Button(
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(0),
                                  borderRadius: BorderRadius.circular(16),
                                  child: HugeIcon(
                                    icon: HugeIcons.strokeRoundedMoreHorizontal,
                                    color: theme.hintColor.withOpacity(0.5),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Text(
                              "새로운 소식이 있나요?",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.hintColor.withOpacity(0.6)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildButtonRow(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRow(ThemeData theme) {
    final List<Map<String, dynamic>> buttonData = [
      {'icon': HugeIcons.strokeRoundedAiImage, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedCamera01, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedGif02, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedMic01, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedLink02, 'onPressed': () {}},
    ];

    return SizedBox(
      height: 56,
      child: Row(
        children: [
          const SizedBox(width: 40),
          for (var data in buttonData)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: SizedBox(
                height: 32,
                width: 56,
                child: Button(
                  onPressed: data['onPressed'],
                  padding: const EdgeInsets.all(0),
                  borderRadius: BorderRadius.circular(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HugeIcon(
                        icon: data['icon'],
                        color: theme.hintColor.withOpacity(0.5),
                        size: 24.0,
                      ),
                      const SizedBox(width: 6),
                      const Text("24"),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
