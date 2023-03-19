import 'package:acacos/widgets/clickable_widgets/main_button.dart';
import 'package:flutter/material.dart';

class placeCard extends StatefulWidget {
  const placeCard({super.key});

  @override
  State<placeCard> createState() => _placeCardState();
}

class _placeCardState extends State<placeCard> {
  bool textExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    child: Image.asset(
                      'assets/Rectangle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star_border),
                            SizedBox(
                              width: 5,
                            ),
                            Text('4.2')
                          ],
                        ),
                        Row(
                          children: const [
                            Text('طرابلس الغرب  . '),
                            Text(
                              'أثار المدينة القديمة ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        textExpanded = !textExpanded;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'هذا النص هو نص غير حقيقي وليس له غرض يمكن استبدالة لاحقا بأي نص تريدة بلا بلا بلا بلا هذا النص هو نص غير حقيقي وليس له غرض يمكن استبدالة لاحقا بأي نص تريدة بلا بلا بلا بلا ',
                        maxLines: textExpanded ? 10 : 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      MainButton(
                        Text: 'شاهد المزيد',
                        withBorder: true,
                        isLoading: false,
                        widthFromScreen: 0.3,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: 10,
            right: 10,
            top: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(200)),
                    width: 55,
                    height: 55,
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 33,
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
