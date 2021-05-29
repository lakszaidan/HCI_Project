import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Kategori/list.dart';
import 'package:flutter_auth/components/text_style.dart';

class Konsumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListData('CLEO', 'Sariguna Primatirta Tbk.', '460', '-6 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('COCO', 'Wahana Interfood Tbk', '250', '-4 (-2.51%))', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('DMND', 'Diamond Food Tbk', '905', '+5 (+0.2%)', 
              hargaEmitenPlus),
            Divider(
              height: 2,
            ),
            ListData('GGRM', 'Gudang Garam Tbk.', '36.185', '-500 (-0.9%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('CLEO', 'Sariguna Primatirta Tbk.', '460', '-6 (-2.05%)', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('COCO', 'Wahana Interfood Tbk', '250', '-4 (-2.51%))', 
              hargaEmitenMinus),
            Divider(
              height: 2,
            ),
            ListData('DMND', 'Diamond Food Tbk', '905', '+5 (+0.2%)', 
              hargaEmitenPlus),
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
