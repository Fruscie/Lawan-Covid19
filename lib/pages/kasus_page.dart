import 'package:flutter/material.dart';
import 'package:lawan_covid19/pages/pusatbantuan_page.dart';
import 'package:lawan_covid19/styles/color.dart';
import 'package:lawan_covid19/styles/font_styles.dart';
import 'package:lawan_covid19/widget/list_covid.dart';

class KasusPage extends StatefulWidget {
  const KasusPage({Key? key}) : super(key: key);

  @override
  _KasusPageState createState() => _KasusPageState();
}

class _KasusPageState extends State<KasusPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/lawanCovids.png',
              width: 350,
              // height: 300,
            ),

            //container untuk searchbox dan kasus covid
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(50))),
              child: Column(
                children: [
                  //searchbox
                  Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    padding: const EdgeInsets.only(
                        left: 20, bottom: 10, right: 20, top: 10),
                    child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ))),
                  ),

                  //jarak antar widget
                  const SizedBox(
                    height: 20,
                  ),

                  //container box kasus covid-19
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: blueColor,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Kasus Covid-19 Terkonfirmasi',
                                style: titleTS.copyWith(color: whiteColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '10',
                                style: titleTS.copyWith(
                                    color: whiteColor, fontSize: 50),
                              )
                            ],
                          ),
                        ),
                        //jarak antar widget
                        const SizedBox(height: 15),

                        //widget jumlah kasus
                        ListCovid(
                          title: 'Sembuh',
                          trailingText: '2',
                          trailingColor: greenColor,
                        ),
                        ListCovid(
                          title: 'Meninggal',
                          trailingText: '2',
                          trailingColor: redColor,
                        ),
                        ListCovid(
                          title: 'Dalam Perawatan',
                          trailingText: '6',
                          trailingColor: redColor,
                        ),
                        ListCovid(
                          title: 'Orang dalam Pemantauan',
                          trailingText: '6',
                          trailingColor: blueColor,
                        ),
                        ListCovid(
                          title: 'Pasien dalam Pengawasan',
                          trailingText: '51',
                          trailingColor: orangeColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
