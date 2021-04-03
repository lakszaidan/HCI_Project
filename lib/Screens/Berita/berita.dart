import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Berita/detail_berita.dart';
import 'package:flutter_auth/Screens/Berita/widgetlist.dart';
import 'package:flutter_auth/Screens/Drawer/myDrawer.dart';
import 'package:flutter_auth/components/text_style.dart';
import 'package:flutter_auth/constants.dart';

class BeritaPage extends StatefulWidget {
  @override
  _BeritaPageState createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage>
    with SingleTickerProviderStateMixin {
  List<ListItem> listTiles = [
    ListItem(
        "https://foto.kontan.co.id/LN7nLjiCIZtrZfg_g99RxrBRALE=/smart/2020/04/06/1933777664p.jpg",
        "Analis proyeksikan kredit BCA (BBCA) tumbuh 4%-5%, simak rekomendasi sahamnya",
        "Danielisa Putri",
        "31 Maret 2021",
        "Pelemahan aktivitas bisnis dan ekonomi di sepanjang tahun lalu turut menyeret turun pertumbuhan kredit PT Bank Central Asia Tbk (BBCA). Namun, analis menilai kinerja BBCA tetap solid dan berpotensi membaik di tahun ini." +
            "Berdasarkan laporan keuangan tahunan 2020, laba bersih BBCA terkoreksi 5,14% secara tahunan (yoy) ke Rp 27,13 triliun. \n \n Manajemen mengatakan penurunan laba disebabkan kenaikan biaya pencadangan untuk mengantisipasi potensi penurunan kualitas aset. \n \n" +
            "Di periode yang sama, pertumbuhan rata-rata kredit BBCA sebesar 4,7% yoy. Sementara, total fasilitas kredit untuk bisnis meningkat 5% yoy. Namun, adanya pelemahan aktivitas bisnis maka fasilitas tersebut tidak dapat dimanfaatkan secara maksimal" +
            "Dampaknya, hingga akhir Desember 2020 total kredit BCA menurun 2,1% menjadi Rp 575,6 triliun. Dengan demikian, secara konsolidasi total kredit tercatat sebesar Rp 588,7 triliun atau melemah 2,5% yoy."),
    ListItem(
        "https://foto.kontan.co.id/rrjq7n0QxQkhjQTDP9G7NHZbbrE=/smart/2020/12/09/4497031p.jpg",
        "Pendapatan Indonesian Tobacco (ITIC) naik 34,7% pada 2020, berikut pendorongnya",
        "Nur Qolbi",
        "31 Maret 2021",
        "Realisasi kinerja PT Indonesian Tobacco Tbk (ITIC) sepanjang tahun 2020 melampaui target yang sebesar 20%, baik untuk top line maupun bottom line. Pada tahun lalu, produsen tembakau iris ini membukukan peningkatan pendapatan 34,7% year on year (yoy) menjadi Rp 224,3 miliar dari sebelumnya Rp 166,57 miliar. \n\n" +
            "Dari segi bottom line, Indonesian Tobacco bahkan berhasil membalikkan keadaan. Pada tahun 2019, Indonesian Tobacco mencatatkan rugi tahun berjalan sebesar Rp 7 miliar. Sementara pada tahun 2020, Indonesian Tobacco membukukan laba tahun berjalan Rp 6,12 miliar."),
    ListItem(
        "https://foto.kontan.co.id/5TEgMpZtsD_uY6JJSekwJ7NstE8=/smart/2020/02/05/703248835p.jpg",
        "Bumi Serpong Damai (BSDE) optimistis kinerja membaik di 2021, berikut pendorongnya",
        "Prima",
        "31 Maret 2021",
        "PT Bumi Serpong Damai Tbk (BSDE) optimistis mampu mencatatkan kinerja yang positif di tahun 2021. Prospek industri properti yang membaik diyakini mampu mendorong kinerja BSDE pada tahun ini. \n\n" +
            "Per Desember 2020, BSDE memiliki proyek bangunan yang sedang dikerjakan (proses konstruksi) senilai total Rp 2,11 triliun. Sedangkan proyek tanah yang sedang dikembangkan senilai Rp 5,75 triliun. Proyek tersebut merupakan jaminan pendapatan BSDE di tahun-tahun mendatang. \n"
                "Lebih lanjut BSDE optimistis target marketing sales sebesar Rp 7 triliun di 2021 bakal tercapai. \n\n" +
            "Pada tahun 2020, BSDE membukukan pendapatan usaha sebesar Rp 6,18 triliun. Pendapatan usaha tersebut dikontribusikan oleh ketujuh segmen pendapatan yakni, penjualan tanah, bangunan dan strata title, sewa, konstruksi, hotel, arena rekreasi, pengelolaan gedung dan pendapatan lain-lain."),
    ListItem(
        "https://foto.kontan.co.id/urG5-THMG3bxDFA3olT2wqBgrTM=/smart/2018/12/12/375944790p.jpg",
        "Pendapatan Sawit Sumbermas (SSMS) meningkat 22,4%, laba bersih melesat ribuan persen",
        "Nur Qolbi",
        "31 Maret 2021",
        "Emiten perkebunan dan pengolahan kelapa sawit PT Sawit Sumbermas Sarana Tbk (SSMS) mencatatkan peningkatan pendapatan sebesar 22,4% sepanjang tahun 2020. Berdasarkan laporan keuangan 2020 yang dirilis Rabu (31/3), pendapatan SSMS bertambah dari Rp 3,28 triliun pada 2019 menjadi Rp 4,01 triliun pada tahun lalu. \n\n" +
            "Dari segi bottom line, laba bersih Sawit Sumbermas bahkan melesat 4.836,9% year on year (yoy). Laba bersih SSMS pada tahun 2019 hanya sebesar Rp 11,68 miliar, sementara pada tahun 2020 mencapai Rp 576,63 miliar.\n\n" +
            "Selain karena kenaikan pendapatan, peningkatan laba bersih ini juga didorong beban pokok penjualan SSMS tahun 2020 yang berkurang 2,4% yoy menjadi Rp 2,21 triliun dari sebelumnya Rp 2,27 triliun. Alhasil, laba bruto SSMS meningkat 78% yoy, dari Rp 1,01 triliun menjadi Rp 1,8 triliun. Di samping itu, beban penjualan SSMS tahun 2020 juga turun 1,2% yoy menjadi Rp 81,7 miliar."),
    ListItem(
        "https://foto.kontan.co.id/zT-7mNOibTrDWa0AwIbuYA-rdTM=/smart/2020/09/22/882967429p.jpg",
        "Saham Waskita direkomendasikan hold",
        "awasi",
        "29 Maret 2021",
        "PT Waskita Karya Tbk (WSKT) membukukan kerugian bersih sebesar Rp 7,4 triliun di 2020. Jumlah tersebut berbanding terbalik dengan kondisi di 2019 yang masih mengantongi laba bersih Rp 928 miliar. Pendapatan WSKT di 2020 juga tercatat merosot 48% secara tahunan (yoy) menjadi Rp 16,2 triliun. \n\n" +
            "Analis Sucor Sekuritas Joey Faustian mengatakan, bila dilihat secara kuartalan, kerugian yang dialami WSKT memburuk di kuartal keempat 2020 menjadi Rp 4,7 triliun. Padahal di kuartal ketiga tahun 2020 jumlah kerugian WSKT hanya Rp 1,5 triliun. Merosotnya kerugian WSKT di kuartal keempat 2020 lantaran beban pokok yang naik 80% secara kuartalan menjadi Rp 7,2 triliun dan belanja operasional atau operational expenditure (opex) yang naik 285% secara kuartalan menjadi Rp 964 miliar."),
    ListItem(
        "https://foto.kontan.co.id/LN7nLjiCIZtrZfg_g99RxrBRALE=/smart/2020/04/06/1933777664p.jpg",
        "Analis proyeksikan kredit BCA (BBCA) tumbuh 4%-5%, simak rekomendasi sahamnya",
        "Danielisa Putri",
        "31 Maret 2021",
        "Pelemahan aktivitas bisnis dan ekonomi di sepanjang tahun lalu turut menyeret turun pertumbuhan kredit PT Bank Central Asia Tbk (BBCA). Namun, analis menilai kinerja BBCA tetap solid dan berpotensi membaik di tahun ini." +
            "Berdasarkan laporan keuangan tahunan 2020, laba bersih BBCA terkoreksi 5,14% secara tahunan (yoy) ke Rp 27,13 triliun. \n \n Manajemen mengatakan penurunan laba disebabkan kenaikan biaya pencadangan untuk mengantisipasi potensi penurunan kualitas aset. \n \n" +
            "Di periode yang sama, pertumbuhan rata-rata kredit BBCA sebesar 4,7% yoy. Sementara, total fasilitas kredit untuk bisnis meningkat 5% yoy. Namun, adanya pelemahan aktivitas bisnis maka fasilitas tersebut tidak dapat dimanfaatkan secara maksimal" +
            "Dampaknya, hingga akhir Desember 2020 total kredit BCA menurun 2,1% menjadi Rp 575,6 triliun. Dengan demikian, secara konsolidasi total kredit tercatat sebesar Rp 588,7 triliun atau melemah 2,5% yoy."),
  ];

  List<Tab> _tabList = [
    Tab(
      child: Text("Top", style: tabName),
    ),
    Tab(
      child: Text("Popular", style: tabName),
    ),
    Tab(
      child: Text("Trending", style: tabName),
    ),
    Tab(
      child: Text("Stock Choice", style: tabName),
    ),
    Tab(
      child: Text("Category", style: tabName),
    ),
  ];
  //create tab controller
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        elevation: 1.5,
        toolbarHeight: 110.0,
        backgroundColor: kLightColor,
        centerTitle: true,
        title: Text(
          "Berita Saham",
          style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black87),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          //create tab controller and a tab list
          child: TabBar(
            indicatorColor: kPrimaryColor,
            indicatorWeight: 5,
            isScrollable: true,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      drawer: MyDrawer(),
      //create tab bar
      body: TabBarView(
        controller: _tabController,
        children: [
          //create top container
          Padding(
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

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Icon(Icons.star),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Icon(Icons.trending_up)),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Icon(Icons.bar_chart),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Icon(Icons.category),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem {
  String imgUrl;
  String newsTitle;
  String author;
  String date;
  String content;

  ListItem(this.imgUrl, this.newsTitle, this.author, this.date, this.content);
}
