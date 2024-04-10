import "package:flutter/material.dart";
import "package:flutter_snake_game/gameLogic/game.dart";
import "/responsive/responsive.dart";
import "/widgets/custom_button.dart";
import "/widgets/custom_text.dart";
import "/widgets/custom_textfield.dart";

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  void gameStart(BuildContext context) {
    Navigator.pushNamed(context, GamePage.routeName);
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
                text: 'Create Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextfield(
                  controller: _nameController, hintText: 'Write your name '),
              SizedBox(height: size.height * 0.045),
              CustomButton(
                  onTap: () => gameStart(context),
                  text: 'Create',
                  borderRadius: 5)
            ],
          ),
        ),
      ),
    );
  }
}
