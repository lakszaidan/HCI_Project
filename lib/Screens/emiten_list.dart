import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_style.dart';

class EmitenList extends StatefulWidget {
  @override
  _EmitenListState createState() => _EmitenListState();
}

class _EmitenListState extends State<EmitenList> {
  List list;

  String ESSA = Text('dsdsdsd').toStringShort();

  Text hargaESSA = Text(
    '+38 (+11.52%)',
    style: hargaEmitenPlus,
  );

  textToString(Text text) {
    var text = Text('dsd').data;
    return text;
  }

  var emiten = [
    {
      "kode": "ESSA",
      "nama": "Surya Esa Perkasa Tbk.",
      "harga": "368",
      "fluktuasi": "+38 (+11.52%)"
    },
    {
      "kode": "BMRI",
      "nama": "Bank Mandiri (Persero) Tbk.",
      "harga": "5.450",
      "fluktuasi": "-52 (-1.36%)"
    },
    {
      "kode": "ANTM",
      "nama": "Aneka Tambang Tbk.",
      "harga": "2.260",
      "fluktuasi": "-52 (-1.36%)"
    },
    {
      "kode": "UNVR",
      "nama": "Unilever Indonesia Tbk.",
      "harga": "6.725",
      "fluktuasi": "+125 (+1.89%)"
    },
    {
      "kode": "TLKM",
      "nama": "Telkom Indonesia (Persero) Tbk.",
      "harga": "3.410",
      "fluktuasi": "-80 (-2.29%)"
    },
  ];

  Future<List> getData() async {
    return list = emiten;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ESSA', style: namaHargaEmiten),
              Text(
                '368',
                style: namaHargaEmiten,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Surya Esa Perkasa Tbk.', style: namaLengkapEmiten),
              Text(
                '+38 (+11.52%)',
                style: hargaEmitenPlus,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          height: 2,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BMRI', style: namaHargaEmiten),
              Text(
                '5.450',
                style: namaHargaEmiten,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bank Mandiri (Persero) Tbk', style: namaLengkapEmiten),
              Text(
                '-75 (-1.36)',
                style: hargaEmitenMinus,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          height: 2,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ANTM', style: namaHargaEmiten),
              Text(
                '2.260',
                style: namaHargaEmiten,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Aneka Tambang Tbk.', style: namaLengkapEmiten),
              Text(
                '-170 (-7%)',
                style: hargaEmitenMinus,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          height: 2,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('UNVR', style: namaHargaEmiten),
              Text(
                '6.275',
                style: namaHargaEmiten,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Unilever Indonesia Tbk.', style: namaLengkapEmiten),
              Text(
                '+125 (+1.89%)',
                style: hargaEmitenPlus,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          height: 2,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('TLKM', style: namaHargaEmiten),
              Text(
                '3.410',
                style: namaHargaEmiten,
              )
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Telkom Indonesia (Persero) Tbk.', style: namaLengkapEmiten),
              Text(
                '-80 (-2.29%)',
                style: hargaEmitenMinus,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(
          height: 2,
        ),
      ],
    );
  }
}

class EmitenHarga {
  final Text harga;
  final Color status;

  EmitenHarga(this.harga, this.status);
}

class EmitenData extends StatelessWidget {
  final List list;

  EmitenData({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(list[index]['kode'], style: namaHargaEmiten),
                    Text(
                      list[index]['harga'],
                      style: namaHargaEmiten,
                    )
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(list[index]['nama'], style: namaLengkapEmiten),
                    Text(
                      list[index]['fluktuasi'],
                      // style: hargaEmitenPlu,
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(
                height: 2,
              ),
            ],
          );
        });
  }
}
