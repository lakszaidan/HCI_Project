import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Kategori/list.dart';
import 'package:flutter_auth/components/text_style.dart';

class Agraria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListData('AALI', 'Astra Agro Lestari', '10.225', '-2 (+1.99%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('ANDI', 'Andira Agro Tbk.', '50', '0 (0)', 
              null),
            Divider(
              height: 2,
            ),
            ListData('SSMS', 'Sawit Sumbermas Sarana Tbk.', '905', '-5 (+0.2%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('GGRM', 'Gudang Garam Tbk.', '36.185', '-500 (-0.9%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('AALI', 'Astra Agro Lestari', '10.225', '-2 (+1.99%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('ANDI', 'Andira Agro Tbk.', '50', '0 (0)', 
              null),
            Divider(
              height: 2,
            ),
            ListData('SSMS', 'Sawit Sumbermas Sarana Tbk.', '905', '-5 (+0.2%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('GGRM', 'Gudang Garam Tbk.', '36.185', '-500 (-0.9%)', 
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
