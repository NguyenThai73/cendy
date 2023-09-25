import 'package:cendy/app/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widget/border_textfield.dart';
import '../../../common/widget/loading.dart';
import '../bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _bloc = LoginBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<LoginBloc, LoginState>(
          bloc: _bloc,
          listener: (context, state) async {
            if (state is LoginLoading) {
              onLoading(context);
              return;
            } else if (state is LoginFirstState) {
              Navigator.pop(context);
            } else if (state is LoginSecondState) {
              Navigator.pop(context);
            } else if (state is LoginSuccessState) {
              Navigator.pop(context);
            } else if (state is LoginFailure) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back! Glad to see you, Again!",
                          style: AppTheme.black30n700,
                        ),
                        const SizedBox(height: 15),
                        const BorderTextField(
                          title: "Student Email",
                          placeholder: 'Enter your email',
                        ),
                        const SizedBox(height: 15),
                        const BorderTextField(
                          title: "Password",
                          placeholder: 'Enter your password',
                          isPassword: true,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Forgot Password?",
                                style: AppTheme.green14n600,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 56,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Login",
                                    style: AppTheme.white16n600,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
