import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/Component/ScreenSize.dart';
import 'package:managmentsh/Component/Rgexpression.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final widthScreen = constraints.maxWidth;
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(50),
                      child: Image.asset(
                        "assets/images/male.png",
                        width: 200,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: widthScreen < sm
                                  ? widthScreen
                                  : widthScreen * 0.5,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'الرجاء إدخال كلمة الاسم واللقب';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "الاسم واللقب",
                                ),
                              ),
                            ),
                            Container(
                              width: widthScreen < sm
                                  ? widthScreen
                                  : widthScreen * 0.5,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'الرجاء إدخال كلمة المرور';
                                  } else if (!passwordRegExp.hasMatch(value)) {
                                    return 'كلمة المرور يجب أن تكون على الأقل 8 أحرف، تحتوي على حرف، رقم، وحرف خاص';
                                  }
                                  return null;
                                },
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: "كلمة المرور",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: widthScreen < sm ? widthScreen : widthScreen * 0.4,
                      height: 50,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Appcolors.seconderyColor,
                          ),
                          color: Appcolors.seconderyColor),
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).pushNamedAndRemoveUntil(
                          //   "/homepage",
                          //   (route) => false,
                          // );
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              "/homepage",
                              (route) => false,
                            );
                          }
                        },
                        child: const Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                fontSize: 20, color: Appcolors.whithe),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
