import 'package:flutter/material.dart';

class SmallPlaceCard extends StatefulWidget {
  const SmallPlaceCard({super.key});

  @override
  State<SmallPlaceCard> createState() => _SmallPlaceCardState();
}

class _SmallPlaceCardState extends State<SmallPlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/calsum.png',
                        fit: BoxFit.cover,
                        height: 55,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "مسرح الكالسيم ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text('4.2'),
                            Icon(Icons.star_border)
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text(
                              '2.3كم',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
