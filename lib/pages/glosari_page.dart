import 'package:flutter/material.dart';
import 'package:lawan_covid19/styles/color.dart';
import 'package:lawan_covid19/styles/font_styles.dart';

class GlosariPage extends StatelessWidget {
  const GlosariPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/kenaliCovid.png',
              height: 250,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Apa itu Virus Corona?',
                    style: titleTS.copyWith(fontSize: 23),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.ac_unit),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mengenal',
                          style: titleTS,
                        ),
                        const Spacer(),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.access_alarm),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mencegah',
                          style: titleTS,
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.accessibility),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mengobati',
                          style: titleTS,
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 0.5)],
                      color: lightGreyColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.add_link),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mengantisipasi',
                          style: titleTS,
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
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
