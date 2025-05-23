import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/screen/detail/widget/about.dart';
import 'package:house_rent/screen/detail/widget/content_intro.dart';
import 'package:house_rent/screen/detail/widget/detail_app_bar.dart';
import 'package:house_rent/screen/detail/widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            SizedBox(height: 20),
            ContentIntro(house: house),
            SizedBox(height: 20),
            HouseInfo(), // Removido const
            SizedBox(height: 20),
            About(), // Removido const
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: colorScheme.primary,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Book Now',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
