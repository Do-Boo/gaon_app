import 'package:flutter/material.dart';
import 'package:gaon_app/widgets/w_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("아이콘"),
              const SizedBox(height: 16),
              const Text("카카오 계정으로 로그인"),
              const SizedBox(height: 16),
              _Textfield("사용자 이름, 전화번호 또는 이메일 주소", context),
              const SizedBox(height: 16),
              _Textfield("비밀번호", context),
              const SizedBox(height: 16),
              Button(
                onPressed: () {},
                color: Theme.of(context).hintColor.withOpacity(0.9),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Text("로그인", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 16),
              TextButton(onPressed: () => debugPrint("Asdf"), child: Text("비밀번호를 잊으셨나요?", style: TextStyle(color: Theme.of(context).hintColor))),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: Container(height: 1, margin: const EdgeInsets.only(right: 16), color: Theme.of(context).hintColor.withOpacity(0.1))),
                  const Text("또는"),
                  Expanded(child: Container(height: 1, margin: const EdgeInsets.only(left: 16), color: Theme.of(context).hintColor.withOpacity(0.1))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _Textfield(String hintText, context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).hintColor.withOpacity(0.1),
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor.withOpacity(0.2), width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
