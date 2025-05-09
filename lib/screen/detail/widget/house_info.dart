import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              _buildRoomInfo(
                context,
                icon: 'assets/icons/bedroom.svg',
                title: '5 Bedroom',
                subtitle: '3 Master Bedroom',
              ),
              const SizedBox(width: 16),
              _buildRoomInfo(
                context,
                icon: 'assets/icons/bathroom.svg',
                title: '5 Bathroom',
                subtitle: '3 Toilet',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildRoomInfo(
                context,
                icon: 'assets/icons/kitchen.svg',
                title: '2 Kitchen',
                subtitle: '120 sqft',
              ),
              const SizedBox(width: 16),
              _buildRoomInfo(
                context,
                icon: 'assets/icons/parking.svg',
                title: '2 Parking',
                subtitle: '120 sqft',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoomInfo(
    BuildContext context, {
    required String icon,
    required String title,
    required String subtitle,
  }) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: theme.colorScheme.surfaceVariant,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
              color: theme.colorScheme.primary, // Solución simple
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
