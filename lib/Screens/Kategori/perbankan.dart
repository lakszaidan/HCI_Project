import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_style.dart';
import 'package:flutter_auth/Screens/Kategori/list.dart';

class Keuangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListData('AMAR', 'Bank Amar Indonesia', '286', '-6 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('ARTO', 'Bank Jago Tbk', '9.275', '-250 (-2.51%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('BBCA', 'Baml Central Asia Tbk.', '31.075', '-900 (-2%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('BRIS', 'Bank Syariah Indonesia Tbk', '2.290', '-60 (-2.51%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('AMAR', 'Bank Amar Indonesia', '286', '-6 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('ARTO', 'Bank Jago Tbk', '9.275', '-250 (-2.51%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('BBCA', 'Baml Central Asia Tbk.', '31.075', '-900 (-2%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('BRIS', 'Bank Syariah Indonesia Tbk', '2.290', '-60 (-2.51%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
