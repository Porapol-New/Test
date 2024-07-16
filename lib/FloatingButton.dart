import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

//const _url = 'https://flutter.dev';

void _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) throw 'Could not launch $url';
}

class Floatingbutton extends StatelessWidget {
  const Floatingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton.large(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        onPressed: () {
          _launchUrl(
              'https://docs.google.com/forms/d/1x8UzYQwCYNf2_1E64oquFhEl2hCC8TjzZIkKPRdvbjM/prefill');
        },
        child: const Icon(Icons.edit_outlined),
      ),
    ]);
  }
}
