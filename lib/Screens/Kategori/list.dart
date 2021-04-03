import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_style.dart';

class ListData extends StatelessWidget {
  final String kode;
  final String nama;
  final String harga;
  final String fluktuasi;
  final TextStyle status;
  
  ListData(this.kode, this.nama, this.harga, this.fluktuasi, this.status);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(kode, style: namaHargaEmiten),
          Text(
            harga,
            style: namaHargaEmiten,
          )
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nama, style: namaLengkapEmiten),
          Text(
            fluktuasi,
            style: status,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}