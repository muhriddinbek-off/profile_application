import 'package:flutter/material.dart';
import 'package:profile_application/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UpdateButton extends StatefulWidget {
  const UpdateButton({super.key});

  @override
  State<UpdateButton> createState() => _UpdateButtonState();
}

class _UpdateButtonState extends State<UpdateButton> {
  @override
  Widget build(BuildContext context) {
    UserModal userModal = Provider.of<UserModal>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ButtonStyle(
              minimumSize: const MaterialStatePropertyAll(Size(283, 40)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              backgroundColor: const MaterialStatePropertyAll(Color(0xFF171F1D)),
            ),
            onPressed: () {
              setState(() {
                userModal.userInfo();
              });
            },
            child: const Text('Update', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700))),
      ],
    );
  }
}
