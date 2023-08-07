import 'package:flutter/material.dart';
import 'package:profile_application/provider/user_provider.dart';
import 'package:provider/provider.dart';

import '../widget/box.dart';
import '../widget/text_title.dart';
import '../widget/update_button.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserModal userModal = Provider.of<UserModal>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              color: const Color(0xFFFF8D76),
            ),
            Positioned(
              right: MediaQuery.of(context).size.height * 0.15,
              top: MediaQuery.of(context).size.height * 0.02,
              width: 142,
              child: Column(
                children: [
                  Container(
                    height: 142,
                    width: 142,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      border: Border.all(width: 4, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.network('${userModal.img}', fit: BoxFit.cover)),
                  ),
                  Text('${userModal.firstName} ${userModal.lastName}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 36, left: 36, top: MediaQuery.of(context).size.height * 0.11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(textname: 'Username'),
              Box(textname: '${userModal.userName}'),
              const TitleText(textname: 'Email I’d'),
              Box(textname: '${userModal.email}'),
              const TitleText(textname: 'Phone Number'),
              Box(textname: '${userModal.phone}'),
              const TitleText(textname: 'Password'),
              Box(textname: '${userModal.password}'),
              const SizedBox(height: 50),
              const UpdateButton(),
            ],
          ),
        ),
      ],
    );
  }
}
