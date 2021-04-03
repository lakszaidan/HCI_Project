import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Berita/detail_berita.dart';
import 'package:flutter_auth/Screens/Berita/widgetlist.dart';
import 'package:flutter_auth/Screens/Drawer/myDrawer.dart';
import 'package:flutter_auth/Screens/Berita/berita.dart';
import 'package:flutter_auth/components/text_style.dart';
import 'package:flutter_auth/constants.dart';

class BelajarPage extends StatefulWidget {
  @override
  _BelajarPageState createState() => _BelajarPageState();
}

class _BelajarPageState extends State<BelajarPage>
    with SingleTickerProviderStateMixin {
  List<ListItem> listTiles = [
    ListItem(
        "https://www.akseleran.co.id/blog/wp-content/uploads/2020/06/Analisis-Fundamental-Saham.jpg",
        "Tips Membaca Analisis Fundamental Saham",
        "Ravi Putri",
        "31 Maret 2019",
        "Saham merupakan jenis investasi yang memiliki tingkat risiko kerugian sangat tinggi. Apalagi, ketika Anda melaksanakan investasi saham tanpa disertai penilaian kualitas saham secara tepat. Untuk meminimalkan risiko kerugian tersebut, Anda perlu melakukan analisis yang bertujuan mengetahui nilai intrinsik saham. Salah satu metodenya adalah analisis fundamental saham. \n\n" +
            "Melalui analisis fundamental saham, Anda bisa menghindarkan diri dari pembelian saham yang tak layak untuk dibeli. Terkait kelayakan saham tersebut, setiap orang bakal memiliki preferensi tersendiri. Meski menggunakan metode analisis yang sama, kemungkinan besar Anda bakal punya hasil yang berbeda dengan orang lain. Hal itu bisa terjadi karena kemampuan membaca analisis. \n\n" +
            "Dengan metode pembacaan yang tepat, Anda bakal memperoleh hasil analisis yang lebih akurat. Untuk membantu Anda agar bisa membaca analisis fundamental saham dengan cara lebih baik, terdapat 7 tips penting yang dapat dipraktikkan."),
    ListItem(
        "https://ajaib.co.id/wp-content/uploads/2021/01/pexels-dvaughn-bell-2068664.jpg",
        " Mengenal Scalper Saham yang Meramaikan Bursa Efek Indonesia",
        "Pamela Bowie",
        "6 Januari 2021",
        "Strategi scalping saham adalah sebuah strategi trading di mana kita membeli saham kemudian menjualnya dalam waktu sesingkat-singkatnya dengan tujuan merealisasikan profit cepat. Persentase target profit scalping biasanya relatif sedikit, sehingga trader dapat menjual kembali saham dalam tempo beberapa menit atau beberapa jam setelah waktu pembelian. Salah satu jenis strategi scalping misalnya beli saham pagi lalu jual sore. \n\n" +
            "Scalper saham adalah sebutan bagi para trader yang menerapkan strategi scalping. Kebanyakan scalper merupakan trader ritel, tetapi tidak tertutup kemungkinan juga bagi broker atau trader institusional untuk bertransaksi saham layaknya scalper. Yang jelas, scalper membutuhkan banyak modal agar mereka bisa tetap untung besar dari selisih harga jual/beli yang sedikit."),
    ListItem(
        "https://www.pikirantrader.com/wp-content/uploads/2020/06/Mengenal-Teknik-Analisa-Bandarmologi.jpg",
        "Teknik Analisa Bandarmologi yang Jarang Dipakai",
        "Akaibara",
        "16 Juni 2020",
        "Yang dimaksud Teknik Analisa Bandarmologi adalah teknik analisa saham yang dipakai investor ritel berdasarkan anggapan adanya pihak-pihak tertentu sebagai pemain besar bernama Bandar. Pihak yang disebut pula Market Maker inilah yang dianggap dapat mengendalikan pergerakan harga. \n\n +"
                "Dalam penelaahan menggunakan teknik ini, biasanya investor melibatkan unsur-unsur tertentu. Yang digunakan antara lain analisa volume bid dan offer yang membentuk harga suatu saham. \n\n Sebelum menggunakan teknik ini, investor harus mengetahui prinsip-prinsip bandarmologi, apa saja" +
            "pemahaman yang salah yang dimiliki bandar, juga fakta-fakta yang terjadi yang mendukung pemahaman tersebut. Selain itu, Anda harus mengetahui cara mendeteksi pergerakan market maker, di mana metode pendeteksiannya tidak dilakukan melalui pergerakan harga."),
    ListItem(
        "https://www.akseleran.co.id/blog/wp-content/uploads/2020/06/Analisis-Fundamental-Saham.jpg",
        "Tips Membaca Analisis Fundamental Saham",
        "Ravi Putri",
        "31 Maret 2019",
        "Saham merupakan jenis investasi yang memiliki tingkat risiko kerugian sangat tinggi. Apalagi, ketika Anda melaksanakan investasi saham tanpa disertai penilaian kualitas saham secara tepat. Untuk meminimalkan risiko kerugian tersebut, Anda perlu melakukan analisis yang bertujuan mengetahui nilai intrinsik saham. Salah satu metodenya adalah analisis fundamental saham. \n\n" +
            "Melalui analisis fundamental saham, Anda bisa menghindarkan diri dari pembelian saham yang tak layak untuk dibeli. Terkait kelayakan saham tersebut, setiap orang bakal memiliki preferensi tersendiri. Meski menggunakan metode analisis yang sama, kemungkinan besar Anda bakal punya hasil yang berbeda dengan orang lain. Hal itu bisa terjadi karena kemampuan membaca analisis. \n\n" +
            "Dengan metode pembacaan yang tepat, Anda bakal memperoleh hasil analisis yang lebih akurat. Untuk membantu Anda agar bisa membaca analisis fundamental saham dengan cara lebih baik, terdapat 7 tips penting yang dapat dipraktikkan."),
    ListItem(
        "https://ajaib.co.id/wp-content/uploads/2021/01/pexels-dvaughn-bell-2068664.jpg",
        " Mengenal Scalper Saham yang Meramaikan Bursa Efek Indonesia",
        "Pamela Bowie",
        "6 Januari 2021",
        "Strategi scalping saham adalah sebuah strategi trading di mana kita membeli saham kemudian menjualnya dalam waktu sesingkat-singkatnya dengan tujuan merealisasikan profit cepat. Persentase target profit scalping biasanya relatif sedikit, sehingga trader dapat menjual kembali saham dalam tempo beberapa menit atau beberapa jam setelah waktu pembelian. Salah satu jenis strategi scalping misalnya beli saham pagi lalu jual sore. \n\n" +
            "Scalper saham adalah sebutan bagi para trader yang menerapkan strategi scalping. Kebanyakan scalper merupakan trader ritel, tetapi tidak tertutup kemungkinan juga bagi broker atau trader institusional untuk bertransaksi saham layaknya scalper. Yang jelas, scalper membutuhkan banyak modal agar mereka bisa tetap untung besar dari selisih harga jual/beli yang sedikit."),
    ListItem(
        "https://www.pikirantrader.com/wp-content/uploads/2020/06/Mengenal-Teknik-Analisa-Bandarmologi.jpg",
        "Teknik Analisa Bandarmologi yang Jarang Dipakai",
        "Akaibara",
        "16 Juni 2020",
        "Yang dimaksud Teknik Analisa Bandarmologi adalah teknik analisa saham yang dipakai investor ritel berdasarkan anggapan adanya pihak-pihak tertentu sebagai pemain besar bernama Bandar. Pihak yang disebut pula Market Maker inilah yang dianggap dapat mengendalikan pergerakan harga. \n\n +"
                "Dalam penelaahan menggunakan teknik ini, biasanya investor melibatkan unsur-unsur tertentu. Yang digunakan antara lain analisa volume bid dan offer yang membentuk harga suatu saham. \n\n Sebelum menggunakan teknik ini, investor harus mengetahui prinsip-prinsip bandarmologi, apa saja" +
            "pemahaman yang salah yang dimiliki bandar, juga fakta-fakta yang terjadi yang mendukung pemahaman tersebut. Selain itu, Anda harus mengetahui cara mendeteksi pergerakan market maker, di mana metode pendeteksiannya tidak dilakukan melalui pergerakan harga."),
    ListItem(
        "https://www.akseleran.co.id/blog/wp-content/uploads/2020/06/Analisis-Fundamental-Saham.jpg",
        "Tips Membaca Analisis Fundamental Saham",
        "Ravi Putri",
        "31 Maret 2019",
        "Saham merupakan jenis investasi yang memiliki tingkat risiko kerugian sangat tinggi. Apalagi, ketika Anda melaksanakan investasi saham tanpa disertai penilaian kualitas saham secara tepat. Untuk meminimalkan risiko kerugian tersebut, Anda perlu melakukan analisis yang bertujuan mengetahui nilai intrinsik saham. Salah satu metodenya adalah analisis fundamental saham. \n\n" +
            "Melalui analisis fundamental saham, Anda bisa menghindarkan diri dari pembelian saham yang tak layak untuk dibeli. Terkait kelayakan saham tersebut, setiap orang bakal memiliki preferensi tersendiri. Meski menggunakan metode analisis yang sama, kemungkinan besar Anda bakal punya hasil yang berbeda dengan orang lain. Hal itu bisa terjadi karena kemampuan membaca analisis. \n\n" +
            "Dengan metode pembacaan yang tepat, Anda bakal memperoleh hasil analisis yang lebih akurat. Untuk membantu Anda agar bisa membaca analisis fundamental saham dengan cara lebih baik, terdapat 7 tips penting yang dapat dipraktikkan."),
    ListItem(
        "https://ajaib.co.id/wp-content/uploads/2021/01/pexels-dvaughn-bell-2068664.jpg",
        " Mengenal Scalper Saham yang Meramaikan Bursa Efek Indonesia",
        "Pamela Bowie",
        "6 Januari 2021",
        "Strategi scalping saham adalah sebuah strategi trading di mana kita membeli saham kemudian menjualnya dalam waktu sesingkat-singkatnya dengan tujuan merealisasikan profit cepat. Persentase target profit scalping biasanya relatif sedikit, sehingga trader dapat menjual kembali saham dalam tempo beberapa menit atau beberapa jam setelah waktu pembelian. Salah satu jenis strategi scalping misalnya beli saham pagi lalu jual sore. \n\n" +
            "Scalper saham adalah sebutan bagi para trader yang menerapkan strategi scalping. Kebanyakan scalper merupakan trader ritel, tetapi tidak tertutup kemungkinan juga bagi broker atau trader institusional untuk bertransaksi saham layaknya scalper. Yang jelas, scalper membutuhkan banyak modal agar mereka bisa tetap untung besar dari selisih harga jual/beli yang sedikit."),
    ListItem(
        "https://www.pikirantrader.com/wp-content/uploads/2020/06/Mengenal-Teknik-Analisa-Bandarmologi.jpg",
        "Teknik Analisa Bandarmologi yang Jarang Dipakai",
        "Akaibara",
        "16 Juni 2020",
        "Yang dimaksud Teknik Analisa Bandarmologi adalah teknik analisa saham yang dipakai investor ritel berdasarkan anggapan adanya pihak-pihak tertentu sebagai pemain besar bernama Bandar. Pihak yang disebut pula Market Maker inilah yang dianggap dapat mengendalikan pergerakan harga. \n\n +"
                "Dalam penelaahan menggunakan teknik ini, biasanya investor melibatkan unsur-unsur tertentu. Yang digunakan antara lain analisa volume bid dan offer yang membentuk harga suatu saham. \n\n Sebelum menggunakan teknik ini, investor harus mengetahui prinsip-prinsip bandarmologi, apa saja" +
            "pemahaman yang salah yang dimiliki bandar, juga fakta-fakta yang terjadi yang mendukung pemahaman tersebut. Selain itu, Anda harus mengetahui cara mendeteksi pergerakan market maker, di mana metode pendeteksiannya tidak dilakukan melalui pergerakan harga."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 1.5,
        backgroundColor: kLightColor,
        // centerTitle: true,
        title: Text(
          "Belajar Saham",
          style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      drawer: MyDrawer(),
      //create tab bar
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: listTiles.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //detail page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              item: listTiles[index],
                              tag: listTiles[index].newsTitle,
                              content: listTiles[index].content,
                            )));
              },
              child: listWidget(listTiles[index]),
            );
          },
        ),
      ),
    );
  }
}
