import 'package:flutter/material.dart';
import 'package:gaon_app/pages/p_main.dart';
import 'package:gaon_app/widgets/w_button.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/icons/icons1.png', width: 72, height: 72),
              const SizedBox(height: 16),
              Text("카카오 계정으로 로그인", style: TextStyle(color: theme.hintColor, fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _Textfield("사용자 이름, 전화번호 또는 이메일 주소", theme),
              const SizedBox(height: 16),
              _Textfield("비밀번호", theme),
              const SizedBox(height: 16),
              Button(
                onPressed: () {
                  Get.to(() => const MainPage());
                },
                color: theme.hintColor.withOpacity(0.99),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Text("로그인", style: TextStyle(color: theme.primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  debugPrint("Asdf");
                },
                child: Text("비밀번호를 잊으셨나요?", style: TextStyle(color: theme.hintColor)),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Container(height: 1, margin: const EdgeInsets.only(right: 16), color: theme.hintColor.withOpacity(0.1))),
                  const Text("또는"),
                  Expanded(child: Container(height: 1, margin: const EdgeInsets.only(left: 16), color: theme.hintColor.withOpacity(0.1))),
                ],
              ),
              const SizedBox(height: 16),
              Button(
                onPressed: () {},
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                border: Border.all(color: theme.hintColor.withOpacity(0.2)),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Row(
                  children: [
                    Image.asset('assets/images/icons/icons1.png', width: 48, height: 48),
                    Expanded(
                      child: Text(
                        "카카오톡으로 계속",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: theme.hintColor, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Textfield(hintText, theme) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: theme.hintColor.withOpacity(0.1),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.hintColor.withOpacity(0.2), width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
