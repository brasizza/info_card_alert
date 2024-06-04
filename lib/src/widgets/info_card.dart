import 'package:flutter/material.dart';
import 'package:info_messages/src/core/info_message.dart';

class InfoCard extends StatelessWidget {
  final InfoMessage? infoMessage;

  const InfoCard({super.key, required this.infoMessage});

  @override
  Widget build(BuildContext context) {
    return (infoMessage == null)
        ? const SizedBox.shrink()
        : Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: infoMessage!.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 76,
                child: Row(
                  children: [
                    infoMessage!.icon,
                    const SizedBox(width: 16),
                    Expanded(
                      child: infoMessage!.message,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
  }
}
