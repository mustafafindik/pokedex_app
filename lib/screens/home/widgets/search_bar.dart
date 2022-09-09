import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchInputController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
      child: Container(
        alignment: Alignment.center,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 50,
              color: kLightTextColor.withOpacity(0.23),
            ),
          ],
        ),
        child: TextField(
          controller: searchInputController,
          autofocus: false,
          onChanged: (value) {
            // ignore: avoid_print
            print(value);
          },
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.searchText,
            hintStyle: const TextStyle(color: kIconColor, fontSize: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
