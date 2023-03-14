import 'package:flutter/material.dart';
import 'package:group/core/constants/string_provider.dart';
import 'package:group/core/constants/ui_kit_dimen.dart';
import 'package:group/core/constants/ui_kit_text_style.dart';
import 'package:group/presentation/screens/main/book_card_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: UiKitDimen.paddingMedium,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: UiKitDimen.baseTopPageMargin),
            Text(
              StringProvider.mainScreenTitle,
              style: UiKitTextStyle.pageMainTitle,
            ),
            const SizedBox(height: UiKitDimen.heightSmall),
            const BookCardWidget(),
          ],
        ),
      )),
    );
  }
}
