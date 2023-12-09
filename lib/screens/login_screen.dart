import 'package:ecommerce_app/bloc/authentication/auth.bloc.dart';
import 'package:ecommerce_app/bloc/authentication/auth.event.dart';
import 'package:ecommerce_app/bloc/authentication/auth.state.dart';
import 'package:ecommerce_app/constants/colors.dart';
//import 'package:ecommerce_app/data/repository/authentication_repository.dart';
//import 'package:ecommerce_app/util/auth_maneger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _usernameController = TextEditingController(text: 'amirshacour04');
  final _passwordController = TextEditingController(text: '12345678');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.indivatorColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon_application.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'اپل شاپ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "DANA",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                      color: CustomColor.indivatorColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        controller: _usernameController,
                        textDirection: TextDirection.rtl,
                        cursorColor: CustomColor.indivatorColor,
                        decoration: InputDecoration(
                          hintTextDirection: TextDirection.rtl,
                          hintText: 'نام کاربری',
                          hintStyle: TextStyle(
                            color: CustomColor.indivatorColor,
                            fontFamily: 'SM',
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30),
                    decoration: BoxDecoration(
                      color: CustomColor.indivatorColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: TextField(
                        controller: _passwordController,
                        textDirection: TextDirection.rtl,
                        cursorColor: CustomColor.indivatorColor,
                        decoration: InputDecoration(
                          //labelText: 'password',
                          hintTextDirection: TextDirection.rtl,
                          hintText: 'رمز عبور',
                          hintStyle: TextStyle(
                            color: CustomColor.indivatorColor,
                            fontFamily: 'SM',
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state is AuthInitiateState) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.indivatorColor,
                          ),
                          onPressed: () async {
                            BlocProvider.of<AuthBloc>(context).add(
                              AuthLoginRequest(
                                _usernameController.text,
                                _passwordController.text,
                              ),
                            );
                          },
                          child: const Text(
                            'ورود',
                            style: TextStyle(
                              fontFamily: "SM",
                              fontSize: 14,
                            ),
                          ),
                        );
                      }
                      if (state is AuthLoadingState) {
                        return  CircularProgressIndicator();
                      }
                      if (state is AuthResponseState) {
                        Text widget = const Text('');
                        state.response.fold(
                          (l) {
                            widget = Text(l);
                          },
                          (r) {
                            widget = Text(r);
                          },
                        );
                        return widget;
                      }

                      return const Text('خطای نا مشخص');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
