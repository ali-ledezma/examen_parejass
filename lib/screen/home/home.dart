import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/widget/best_offer.dart';
import 'package:house_rent/screen/home/widget/categories.dart';
import 'package:house_rent/screen/home/widget/custom_app_bar.dart';
import 'package:house_rent/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:house_rent/screen/home/widget/recommended_house.dart';
import 'package:house_rent/screen/home/widget/search_input.dart';
import 'package:house_rent/screen/home/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: CustomAppBar(), // Removido const
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20), // Puede permanecer const
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(), // Removido const
              SearchInput(), // Removido const
              Categories(), // Removido const
              RecommendedHouse(), // Removido const
              BestOffer(), // Removido const
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(), // Removido const
    );
  }
}
