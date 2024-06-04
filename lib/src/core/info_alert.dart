import 'package:flutter/material.dart';
import 'package:info_messages/src/core/info_message.dart';

class InfoAlert {
  static InfoAlert? _instance;
  InfoAlert._();
  static InfoAlert get i => _instance ??= InfoAlert._();

  // quantity error

  InfoMessage errorMessage({required String message}) => InfoMessage(
        message: Text(
          message,
          style: const TextStyle(
            color: Color(0xFF600011),
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color(0xFFFFD4DC),
        icon: const Icon(Icons.report_problem_outlined),
      );

  InfoMessage warningMessage({required String message}) => InfoMessage(
        message: Text(
          message,
          style: const TextStyle(
            color: Color(0xFF4B2811),
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color(0xFFFFDEC7),
        icon: const Icon(Icons.warning_amber_sharp),
      );

  InfoMessage successMessage({required String message}) => InfoMessage(
        message: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color(0xFF16B76A),
        icon: const Icon(Icons.check),
      );

  InfoMessage infoMessage({required String message}) => InfoMessage(
        message: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color(0xFFA7D0FF),
        icon: const Icon(Icons.info_outline),
      );

  InfoMessage customMessage({required Widget message, required Color backgroundColor, required Icon icon}) => InfoMessage(
        message: message,
        backgroundColor: backgroundColor,
        icon: icon,
      );
}
