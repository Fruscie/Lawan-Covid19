import 'package:flutter/material.dart';
import 'package:lawan_covid19/styles/color.dart';
import 'package:lawan_covid19/styles/font_styles.dart';

class PusatBantuanPage extends StatelessWidget {
  const PusatBantuanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/pusatBantuan.png',
              height: 250,
            ),

            //container untuk Pusat Bantuan
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
                  Text(
                    'Pusat Bantuan',
                    style: titleTS.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Silahkan hubungi melalui informasi yang tersedia dibawah ini jika anda mengalami gejala-gejala dibawah ini',
                    style: titleTS.copyWith(fontWeight: FontWeight.w300),
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
                        const Icon(Icons.ac_unit),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'HOTLINE',
                          style: titleTS,
                        ),
                        const Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: MaterialButton(
                            color: blueColor,
                            textColor: whiteColor,
                            onPressed: () {},
                            child: const Text('Panggil'),
                          ),
                        )
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
                          'Konsultasi Dokter',
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
                          'Rumah Sakit Terdekat',
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
