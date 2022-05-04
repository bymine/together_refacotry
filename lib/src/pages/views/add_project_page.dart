import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:line_icons/line_icons.dart';
import 'package:together_refacotry/src/components/text_input_field.dart';

class AddProjectPage extends StatelessWidget {
  const AddProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("프로젝트 생성"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: null,
                hintText: "프로젝트 제목",
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "이메일을 입력하세요";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: null,
                hintText: "프로젝트 소개글",
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "이메일을 입력하세요";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            ObxValue(
                (Rx<bool> visivity) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextInputField(
                        controller: null,
                        hintText: "비밀번호",
                        inputType: TextInputType.visiblePassword,
                        obscureText: visivity.value,
                        suffixIcon: IconButton(
                          onPressed: () {
                            visivity.value = !visivity.value;
                          },
                          icon: const Icon(LineIcons.eye),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "비밀번호를 입력하세요";
                          }
                          return null;
                        },
                      ),
                    ),
                true.obs),
            const SizedBox(
              height: 36,
            ),
            ObxValue(
                (Rx<bool> visivity) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextInputField(
                        controller: null,
                        hintText: "비밀번호 확인",
                        inputType: TextInputType.visiblePassword,
                        obscureText: visivity.value,
                        suffixIcon: IconButton(
                            onPressed: () {
                              visivity.value = !visivity.value;
                            },
                            icon: const Icon(LineIcons.eye)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "비밀번호 확인을 입력하세요";
                          }
                          return null;
                        },
                      ),
                    ),
                true.obs),
            const SizedBox(
              height: 36,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffEBC565),
                    minimumSize: Size(Get.width, 50)),
                onPressed: () {},
                child: const Text("프로젝트 생성"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
