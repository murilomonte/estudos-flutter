import 'package:flutter/material.dart';
import 'package:minimal_music_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

// acho feio demais, mas quero o aprendizado
class NeuBox extends StatelessWidget {
  final Widget? child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // is dark mode
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          // dark shadow on bottom right
          BoxShadow(
            color: isDarkMode ? Colors.black : Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),

          // light shadown on top left
          BoxShadow(
            color: isDarkMode ? Colors.grey.shade900 : Colors.white,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: child,
    );
  }
}
