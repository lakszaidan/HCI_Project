import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Kategori/list.dart';
import 'package:flutter_auth/components/text_style.dart';

class Pertambangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListData('ADRO', 'Surya Esa Perkasa Tbk', '1.175', '+38 (+11.52%)',
                hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('BUMI', 'Bumi Resources Tbk', '59', '-1 (-1.67%)',
                hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('ANTM', 'Aneka Tambang Tbk.', '2.260', '-170 (-7%)',
                hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('UNVR', 'Unilever Indonesia Tbk.', '6.275', '+125 (+1.89%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('ADRO', 'Surya Esa Perkasa Tbk', '1.175', '+38 (+11.52%)',
                hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('BUMI', 'Bumi Resources Tbk', '59', '-1 (-1.67%)',
                hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('ANTM', 'Aneka Tambang Tbk.', '2.260', '-170 (-7%)',
                hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('UNVR', 'Unilever Indonesia Tbk.', '6.275', '+125 (+1.89%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
