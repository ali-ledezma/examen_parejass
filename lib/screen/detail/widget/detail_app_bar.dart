import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/model/house.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botón de retroceso
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow.svg',
                        color:
                            theme.colorScheme.onBackground, // Solución simple
                      ),
                    ),
                  ),
                  // Botón de favoritos
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/mark.svg',
                      color: theme.colorScheme.onSecondary, // Solución simple
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
