import 'package:flutter/material.dart';
import 'package:gaon_app/widgets/w_button.dart';
import 'package:gaon_app/widgets/w_navigationbar.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                _buildHeader(theme),
                IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: theme.hintColor.withOpacity(0.1))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      child: Column(
                        children: [
                          const SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                  const SizedBox(height: 8),
                                ],
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "do.__.ou",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "새로운 소식이 있나요?",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.hintColor.withOpacity(0.6)),
                                    ),
                                    const SizedBox(height: 8),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          for (var i = 0; i < 5; i++) ...[
                                            Container(
                                              height: 300,
                                              width: 300,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(width: 8),
                                          ]
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                              )
                            ],
                          ),
                          _contentButtonRow(theme),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(ThemeData theme) {
    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.hintColor.withOpacity(0.1))),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Column(
            children: [
              Row(
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
                      const SizedBox(height: 8),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "do.__.ou",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "새로운 소식이 있나요?",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.hintColor.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _userButtonRow(theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userButtonRow(ThemeData theme) {
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

  Widget _contentButtonRow(ThemeData theme) {
    final List<Map<String, dynamic>> buttonData = [
      {'icon': HugeIcons.strokeRoundedFavourite, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedComment02, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedRepeat, 'onPressed': () {}},
      {'icon': HugeIcons.strokeRoundedSent, 'onPressed': () {}},
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
