import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_style.dart';
import 'package:flutter_auth/constants.dart';

class ListData extends StatelessWidget {
  final String kode;
  final String nama;
  final String harga;
  final String fluktuasi;
  final TextStyle status;

  ListData(this.kode, this.nama, this.harga, this.fluktuasi, this.status);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: Key(this.kode),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  buttonPadding: EdgeInsets.symmetric(horizontal: 10),
                  titlePadding: EdgeInsets.zero,
                  elevation: 0,
                  title: Container(
                    padding: EdgeInsets.all(20),
                    color: kMainColor,
                    child: Text(
                      'Konfirmasi',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  content: Container(
                    height: 100.0,
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Apakah anda yakin ingin menambahkan Emiten ${this.kode} ke Watchlist Saham?')
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    MaterialButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: kSecondaryColor,
                      child: Text('Tidak'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    MaterialButton(
                      color: kMainColor,
                      child: Text('Ya'),
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                '${this.kode} telah ditambahkan ke Watchlist Saham'),
                          ),
                        );
                      },
                    ),
                  ],
                );
              });
        }
        return null;
      },
      background: Container(
        padding: EdgeInsets.only(left: 220),
        alignment: Alignment.centerRight,
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            'Tambahkan ke Watchlist',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
        onTap: () {}
      ),
    );
  }
}
