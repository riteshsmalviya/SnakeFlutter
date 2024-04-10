import "package:flutter/material.dart";
import "/responsive/responsive.dart";
import "/widgets/custom_button.dart";
import "/widgets/custom_text.dart";
import "/widgets/custom_textfield.dart";

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.lightBlue,
                  ),
                ],
                text: 'Join Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextfield(
                  controller: _nameController, hintText: 'Write your name '),
              SizedBox(height: size.height * 0.025),
              CustomTextfield(
                  controller: _gameController, hintText: 'Game ID '),
              SizedBox(height: size.height * 0.045),
              CustomButton(onTap: () {}, text: 'Join', borderRadius: 5)
            ],
          ),
        ),
      ),
    );
  }
}
