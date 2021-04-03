import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Kategori/list.dart';
import 'package:flutter_auth/components/text_style.dart';

class Infrastruktur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListData('EXCL', 'XL Axiata Tbk.', '2.080', '-10 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('FREN', 'Smartfren Telecom Tbk.', '78', '+1 (+1,3%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('BIRD', 'Blue BIrd Tbk.', '1.285', '-5 (+0.39%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('GGRM', 'Gudang Garam Tbk.', '36.185', '-500 (-0.9%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('EXCL', 'XL Axiata Tbk.', '2.080', '-10 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('FREN', 'Smartfren Telecom Tbk.', '78', '+1 (+1,3%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('BIRD', 'Blue BIrd Tbk.', '1.285', '-5 (+0.39%)', 
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
