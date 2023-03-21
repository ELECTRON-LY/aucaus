import 'package:acacos/helpers/colors.dart';
import 'package:acacos/widgets/clickable_widgets/actions.dart';
import 'package:acacos/widgets/clickable_widgets/small_intro_card.dart';
import 'package:acacos/widgets/clickable_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/clickable_widgets/place_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  bool textExpanded = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          actions: const [MyActions()],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "  مرحبا محمد !",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Text('استكشف معالم ليبيا بضغطة زر ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16))
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyTextField(
                  perfix: Icon(
                    Icons.search,
                    color: mainColor,
                  ),
                  controller: searchController,
                  validator: (String? value) {
                    return null;
                  },
                  hintText: 'ابحث عن معلم، مدينة، او فندق'),
              const Divider(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'بالقرب مني',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const SmallPlaceCard();
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'الاكثر شهرة',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.58,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const placeCard(
                            expandable: false,
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          ' تـصفح حسب المدن ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: GridView.builder(
                        itemCount: 11,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 7,
                                mainAxisSpacing: 7),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    )
                                  ]),
                                  child: GridTile(
                                    footer: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Text(
                                            'بنغازي',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Image.network(
                                      'https://tourslibya.com/wp-content/uploads/2018/01/libya-tours-jebel-acacaus-1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
