import 'package:acacos/widgets/clickable_widgets/main_button.dart';
import 'package:flutter/material.dart';

class placeCard extends StatefulWidget {
  const placeCard({super.key, this.expandable = false});

  @override
  State<placeCard> createState() => _placeCardState();
  final bool expandable;
}

class _placeCardState extends State<placeCard> {
  bool textExpanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.9,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
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
                              Text(
                                'أثار المدينة القديمة ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Text('طرابلس الغرب  . '),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('4.2'),
                              Icon(Icons.star_border),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (widget.expandable) {
                          setState(() {
                            textExpanded = !textExpanded;
                          });
                        }
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MainButton(
                          text: 'شاهد المزيد',
                          withBorder: true,
                          isloading: false,
                          widthFromScreen: 0.3,
                          onPressed: () {},
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
      ),
    );
  }
}
