import 'package:flutter/material.dart';
import 'package:group/core/constants/asset_provider.dart';
import 'package:group/core/constants/string_provider.dart';
import 'package:group/core/constants/ui_kit_dimen.dart';
import 'package:group/core/constants/ui_kit_text_style.dart';
import 'package:group/presentation/base_widgets/base_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: UiKitDimen.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: UiKitDimen.baseTopPageMargin),
              Text(
                StringProvider.profileScreenTitle,
                style: UiKitTextStyle.pageMainTitle,
              ),
              const SizedBox(height: UiKitDimen.heightSmall),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset(AssetProvider.profileAvatar),
                  ),
                  const SizedBox(width: UiKitDimen.widthMedium),
                  Flexible(
                    child: Text(
                      StringProvider.profileScreenHintText,
                      style: UiKitTextStyle.description,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: UiKitDimen.heightSmall),
              BaseTextField(hintText: StringProvider.profileScreenFirstName),
              const SizedBox(height: UiKitDimen.heightSmall),
              BaseTextField(hintText: StringProvider.profileScreenLastName),
              const SizedBox(height: UiKitDimen.heightSmall),
              BaseTextField(hintText: StringProvider.profileScreenTitleEmail),
              const SizedBox(height: UiKitDimen.heightSmall),
              BaseTextField(
                  hintText: StringProvider.profileScreenTitlePhoneNumber),
            ],
          ),
        ),
      ),
    );
  }
}
