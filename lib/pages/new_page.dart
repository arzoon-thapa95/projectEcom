import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Text("Simple with colors properly styled"),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(
                    height: 44,
                    width: 120,
                    child: Center(
                      child: Text('Elevated Button'),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {},
                  child: const SizedBox(
                    height: 44,
                    width: 120,
                    child: Center(
                      child: Text('Outline Button'),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
              ],
            ),
            //
            const SizedBox(height: 12),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 44,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('Elecated Green'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
