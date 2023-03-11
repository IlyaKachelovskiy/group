import 'package:flutter/material.dart';
import 'package:group/core/constants/asset_provider.dart';
import 'package:group/core/constants/string_provider.dart';
import 'package:group/core/constants/ui_kit_text_style.dart';
import 'package:group/presentation/base_widgets/base_text_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 88),

              Text(
                StringProvider.profileScreenTitle,
                style: UiKitTextStyle.splashScreenTitle,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset(AssetProvider.profileAvatar),
                  ),
                  const SizedBox(width: 24),
                  Flexible(
                    child: Text(
                      'Введите своё имя и при желании добавьте фото профиля',
                      style: UiKitTextStyle.description,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BaseTextField(hintText: 'Имя'),
              const SizedBox(height: 12),
              BaseTextField(hintText: 'Фамилия'),
              const SizedBox(height: 12),
              BaseTextField(hintText: 'Email'),
              const SizedBox(height: 12),
              BaseTextField(hintText: 'Номер телефона'),
            ],
          ),
        ),
      ),
    );
  }
}
