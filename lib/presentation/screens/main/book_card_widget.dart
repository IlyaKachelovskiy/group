import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:group/core/constants/ui_kit_colors.dart';
import 'package:group/core/constants/ui_kit_dimen.dart';
import 'package:group/core/constants/ui_kit_text_style.dart';
import 'package:group/domain/models/books.dart';

class BookCardWidget extends StatelessWidget {
  const BookCardWidget({Key? key}) : super(key: key);

  ///сделать закругления
  ///добавить отступы между карточками

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _readJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<Book>;
          return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  shadowColor: Colors.transparent,
                  color: UiKitColors.mainGray,
                  child: Padding(
                    padding: const EdgeInsets.all(UiKitDimen.paddingMedium),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 80,
                          color: Colors.white,
                        ),
                        const SizedBox(width: UiKitDimen.widthMedium),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].name.toString(),
                              style: UiKitTextStyle.title,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              items[index].dateOfIssue.toString(),
                              style: UiKitTextStyle.description,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              items[index].author.toString(),
                              style: UiKitTextStyle.descriptionBold,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.supervised_user_circle_rounded),
                      ],
                    ),
                  ),
                );
              });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<Book>> _readJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('lib/data/json/book.json');
    final list = json.decode(jsonData) as List<dynamic>;

    return list.map((e) => Book.fromJson(e)).toList();
  }
}
