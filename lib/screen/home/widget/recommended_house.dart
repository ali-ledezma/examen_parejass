import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/screen/detail/detail.dart';
import 'package:house_rent/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(house: recommendedList[index]),
              ),
            );
          },
          child: Container(
            width: 230,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(recommendedList[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: CircleIconButton(
                    iconUrl: 'assets/icons/mark.svg',
                    color: colorScheme.secondary, // Reemplazo para accentColor
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommendedList[index].name,
                              style: theme.textTheme.titleLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ) ??
                                  TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              recommendedList[index].address,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ) ??
                                  TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                  ),
                            ),
                          ],
                        ),
                        CircleIconButton(
                          iconUrl: 'assets/icons/mark.svg',
                          color: colorScheme
                              .secondary, // Reemplazo para accentColor
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 20),
        itemCount: recommendedList.length,
      ),
    );
  }
}
