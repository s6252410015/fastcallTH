import 'package:flutter/material.dart';
import 'package:flutter_fastcallth/models/cafelist.dart';
import 'package:flutter_fastcallth/views/cafedetail_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<CafeList> cafeList = [
    CafeList(
      name: 'NANA Hunter Coffee Roasters (นานาฮันเตอร์ - พรานนก)',
      website: 'http://www.facebook.com/nanahuntercoffee',
      mobile: '0659193991',
      image: 'cafe1.png',
      pikad:
          'https://www.google.com/maps/place/Rolling+Roasters/@13.7532802,100.4318636,15z',
      open: 'จ. - ศ. 07.00 – 18.00 น. / ส. - อา. 08.00 – 18.00 น.',
    ),
    CafeList(
      name: 'Patom Organic Living (ปฐม ออร์แกนิค - ทองหล่อ)',
      website: 'http://www.patom.com',
      mobile: '020848649',
      image: 'cafe2.png',
      pikad:
          'https://www.google.com/maps/place/Patom+Organic+Living/@13.738558,100.5791161,15z',
      open: 'อ. – อา. เวลา 9.30 น. – 18.00 น.',
    ),
    CafeList(
      name: 'Camin Cuisine & Cafe (ขมิ้น - ประดิษฐ์มนูธรรม)',
      website: 'http://www.facebook.com/camin.cuisineandcafe.th',
      mobile: '0956156615',
      image: 'cafe3.png',
      pikad:
          'https://www.google.com/maps/place/%E0%B8%82%E0%B8%A1%E0%B8%B4%E0%B9%89%E0%B8%99+Camin+Cuisine+%26+Cafe/@13.8400261,100.5804092,17z',
      open: 'ทุกวัน 8.00 – 22.00 น.',
    ),
    CafeList(
      name: 'Nature Garden Cafe (เนทูร่า การ์เด้น - พระราม 2)',
      website: 'http://www.facebook.com/NaturaBKK',
      mobile: '0851231386',
      image: 'cafe4.png',
      pikad:
          'https://www.google.com/maps/place/Natura+Cafe/@13.6915385,100.4673374,17z',
      open: 'ทุกวัน 10.00 – 18.00 น.',
    ),
    CafeList(
      name: 'Babyccino (เบบี้ ชิโน่ - เอกมัย)',
      website: 'http://www.facebook.com/babyccinobkk',
      mobile: '0803624965',
      image: 'cafe5.png',
      pikad:
          'https://www.google.com/maps/place/BABYCCINO/@13.7302958,100.5895345,17z',
      open: 'ทุกวัน 8.00 – 18.00 น.',
    ),
    CafeList(
      name: 'OTHER CAFE (พญาไท)',
      website: 'http://www.facebook.com/othercafe8',
      mobile: '0809495326',
      image: 'cafe6.png',
      pikad:
          'https://www.google.com/maps/place/Other+Caf%C3%A9/@13.7597911,100.5406519,15z',
      open: 'ทุกวัน 8.00 น. – 20.00 น.',
    ),
    CafeList(
      name: 'Lots.Sathon (ลอตส์ - สาทร)',
      website: 'http://www.facebook.com/Lots.Sathon',
      mobile: '0838264456',
      image: 'cafe7.png',
      pikad:
          'https://www.google.com/maps/place/Lots.Sathon/@13.7200446,100.5299013,17z',
      open:
          'จ. - พฤ. 8.00 -20.00 น., ส. - อา. 9.00 – 22.00 น. และ 8.00 – 22.00 น.',
    ),
    CafeList(
      name: 'Tealily Cafe (ทีลิลี่คาเฟ่ - เอกมัย)',
      website: 'http://www.facebook.com/tealilycafe',
      mobile: '020776961',
      image: 'cafe8.png',
      pikad:
          'https://www.google.com/maps/place/TEALILY+CAFE+EKKAMAI/@13.7311899,100.5870277,17z',
      open: 'พฤ. - จ. 10.00 – 17.00 น',
    ),
    CafeList(
      name: 'Organic Supply (ออร์แกนิคซัพพาย - นาคนิวาส)',
      website: 'http://www.facebook.com/organicsupply.bkk/',
      mobile: '021016410',
      image: 'cafe9.png',
      pikad:
          'https://www.google.com/maps/place/Organic+Supply/@13.7998433,100.6046879,17z',
      open: 'ทุกวัน 10.00 - 20.00 น.',
    ),
    CafeList(
      name: 'Brioche from heaven (บริยอช - สาทร)',
      website: 'http://www.facebook.com/Brioche-from-heaven',
      mobile: '0648470049',
      image: 'cafe10.png',
      pikad:
          'https://www.google.com/maps/place/Brioche+from+heaven/@13.724124,100.5274283,17z',
      open: 'ทุกวัน 9.30 – 19.30 น.',
    ),
    CafeList(
      name: 'TANGIBLE BANGKOK (แทนจิเบิล - เจริญกรุง 82)',
      website: 'http://www.facebook.com/Tangiblebkk',
      mobile: '0813760402',
      image: 'cafe11.png',
      pikad:
          'https://www.google.com/maps/place/TANGIBLE+BANGKOK/@13.6991682,100.4984603,19z',
      open: 'พ. - จ. 9.00 – 17.30 น. (ปิดวันอังคาร)',
    ),
    CafeList(
      name: 'CRAFT at Kimpton Maa-lai Bangkok (หลังสวน)',
      website: 'http://www.kimptonmaalaibangkok.com/bangkok-restaurants/craft',
      mobile: '020569999',
      image: 'cafe12.png',
      pikad:
          'https://www.google.com/maps/place/CRAFT/@13.7374975,100.5415263,17z',
      open: 'ทุกวัน 7.00 – 23.00 น.',
    ),
    CafeList(
      name: 'NANA Coffee Roasters Ari (อารีย์)',
      website: 'http://www.nanacoffeeroasters.com',
      mobile: '.............',
      image: 'cafe13.png',
      pikad:
          'https://www.google.com/maps/place/%E0%B8%99%E0%B8%B2%E0%B8%99%E0%B8%B2+%E0%B8%84%E0%B8%AD%E0%B8%9F%E0%B8%9F%E0%B8%B5%E0%B9%88+%E0%B9%82%E0%B8%A3%E0%B8%AA%E0%B9%80%E0%B8%95%E0%B8%AD%E0%B8%A3%E0%B9%8C+%E0%B8%AD%E0%B8%B2%E0%B8%A3%E0%B8%B5%E0%B8%A2%E0%B9%8C/@13.7826356,100.5397863,17z',
      open: 'ทุกวัน 7.00 – 18.00 น.',
    ),
    CafeList(
      name: 'Snog XX (เลียบด่วนรามอินทรา)',
      website: 'http://www.snogxx.com',
      mobile: '0802211188',
      image: 'cafe14.png',
      pikad:
          'https://www.google.com/maps/place/SNOG+XX+-+The+Caffeine+Dealer/@13.810678,100.6203808,17z',
      open: 'ทุกวัน 8.00 – 20.00 น.',
    ),
    CafeList(
      name: 'Chanintr Work (สุขุมวิท 26)',
      website: 'http://www.facebook.com/ChanintrWork',
      mobile: '020597760',
      image: 'cafe15.png',
      pikad:
          'https://www.google.com/maps/place/CHANINTR+WORK+%7C+Modern+Office+Furniture/@13.7218149,100.5659477,17z',
      open: 'ทุกวัน 10.00 – 19.00 น.',
    ),
    CafeList(
      name: 'AGRABAH CAFE (บางจาก - พระโขนง)',
      website: 'http://www.facebook.com/agrabahcafe',
      mobile: '0866012388',
      image: 'cafe16.png',
      pikad:
          'https://www.google.com/maps/place/Agrabah+Cafe/@13.6976426,100.6061036,15z',
      open: 'ทุกวัน 11.00 น. – 22.00 น.',
    ),
    CafeList(
      name: 'B Story Gargen (เลียบด่วนรามอินทรา)',
      website: 'http://www.facebook.com/bstorygarden',
      mobile: '0837511137',
      image: 'cafe17.png',
      pikad:
          'https://www.google.com/maps/place/B-Story+Garden+Cafe+%26+Restaurants/@13.819539,100.6246333,15z',
      open: 'ทุกวัน 10.00 น. – 23.00 น.',
    ),
    CafeList(
      name: 'เดอะ มัสแตง บลู (The Mustang Blu - หัวลำโพง)',
      website: 'http://www.facebook.com/themustangblu',
      mobile: '0622936191',
      image: 'cafe18.png',
      pikad:
          'https://www.google.com/maps/place/The+Mustang+Blu/@13.7390941,100.5149813,15z',
      open: 'ทุกวัน 12.00 น. – 21.00 น.',
    ),
    CafeList(
      name: 'Season (ทองหล่อ)',
      website: 'http://www.facebook.com/season.bkk',
      mobile: '0656022446',
      image: 'cafe19.png',
      pikad:
          'https://www.google.com/maps/place/Season+Bangkok+-+Thong+Lo+13/@13.7348367,100.5767965,17z',
      open: 'ทุกวัน 09.00 น. – 18.00 น.',
    ),
    CafeList(
      name: 'Unbirthday Cafe (สุขุมวิท 31 - พร้อมพงษ์)',
      website: 'http://www.facebook.com/unbirthdaybkk',
      mobile: '0851453181',
      image: 'cafe20.png',
      pikad:
          'https://www.google.com/maps/place/Unbirthday+Cafe/@13.7352658,100.5667797,15z',
      open: 'ทุกวัน 09.00 น. – 19.00 น.',
    ),
    CafeList(
      name: 'horme cafe (หอมคาเฟ่ - บางนา)',
      website: 'http://www.facebook.com/heijiibkk',
      mobile: '021829696',
      image: 'cafe21.png',
      pikad:
          'https://www.google.com/maps/place/%E0%B8%AB%E0%B8%AD%E0%B8%A1+%E0%B8%84%E0%B8%B2%E0%B9%80%E0%B8%9F%E0%B9%88/@13.6583302,100.6683517,15z',
      open: 'ทุกวัน 7.00 – 20.00 น.',
    ),
    CafeList(
      name: 'BLUE WHALE CAFE (ท่ามหาราช)',
      mobile: '0969974962',
      website: 'https://www.facebook.com/bluewhalebkk',
      image: 'cafe22.png',
      pikad:
          'https://www.google.com/maps/place/BLUE+WHALE+Local+Eatery/@13.744481,100.4900123,17z',
      open: '9.00 – 18.00 น. หยุดวันอังคาร',
    ),
    CafeList(
      name: 'BLACKSUGAR CAFE BKK (รามอินทรา)',
      website: 'http://facebook.com/blacksugar.cafe.bkk',
      mobile: '0909764997',
      image: 'cafe23.png',
      pikad:
          'https://www.google.com/maps/place/BLUE+WHALE+Local+Eatery/@13.744481,100.4900123,17z',
      open: '10.00 – 18.00 น.',
    ),
    CafeList(
      name: 'Roots at Lasalle (ลาซาล)',
      website: 'http://rootsbkk.com',
      mobile: '0962135839',
      image: 'cafe24.png',
      pikad:
          'https://www.google.com/maps/place/Roots+at+Lasalle/@13.6633311,100.6119481,17z',
      open: '7.30 – 16.30 น.',
    ),
    CafeList(
      name: 'Nana Coffee Roasters @ Niche3 (เลียบด่วนรามอินทรา)',
      website: 'http://www.nanacoffeeroasters.com',
      mobile: '0885554724',
      image: 'cafe25.png',
      pikad:
          'https://www.google.com/maps/place/Nana+Coffee+Roasters+@+Niche3+Praditmanoonthum/@13.7763846,100.6064693,15z',
      open: '7.00 – 17.30 น.',
    ),
    CafeList(
      name: 'CRIME BKK (ทองหล่อ)',
      website: 'http://www.facebook.com/crimebkk',
      mobile: '0969974962',
      image: 'cafe26.png',
      pikad:
          'https://www.google.com/maps/place/CRIME+BKK/@13.7392853,100.5856553,15z',
      open: '8.00 – 17.00 น. หยุดวันพุธ',
    ),
    CafeList(
      name: 'The Somchai (ทองหล่อ 11)',
      website: 'https://thesomchai.com',
      mobile: '0819153464',
      image: 'cafe27.png',
      pikad:
          'https://www.google.com/maps/place/The+Somchai/@13.7326322,100.5816114,19z',
      open: '11.00 – 19.00 น. หยุดวันอังคาร',
    ),
    CafeList(
      name: 'Pacamara Coffee Roaster x Specialty Coffee Lab (ทองหล่อ 25)',
      website: 'http://www.facebook.com/pacamaracoffee',
      mobile: '0638190650',
      image: 'cafe28.png',
      pikad:
          'https://www.google.com/maps/place/Pacamara+Coffee+Roaster+x+Specialty+Coffee+Lab/@13.7398712,100.5828521,15z',
      open: '8.00 – 18.30 น. หยุดวันอังคาร',
    ),
    CafeList(
      name: 'L’OLIVA (สุขุมวิท 36)',
      website: 'http://www.facebook.com/lolivabkk',
      mobile: '0616139588',
      image: 'cafe29.png',
      pikad:
          'https://www.google.com/maps/place/L\'OLIVA+Ristorante+Italiano+%26+Wine+Bar/@13.7226263,100.5737365,17z',
      open: '9.00 น. - 17.30 น.',
    ),
    CafeList(
      name: 'Roots at the COMMONS (ทองหล่อ)',
      website: 'http://www.rootsbkk.com',
      mobile: '0970594517',
      image: 'cafe30.png',
      pikad:
          'https://www.google.com/maps/place/Roots+at+theCOMMONS/@13.7351458,100.5822094,15z',
      open: 'วันธรรมดา : 8.00 – 17.30 น , วันหยุด : 8.00 - 19.00 น. ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Café In Bangkok',
        ),
        centerTitle: true,
        backgroundColor: Color(0xff925B16),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xffF9E9D4),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 5.0,
                    color: Colors.grey[900],
                  );
                },
                itemCount: cafeList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return CafeDetailUI(
                            name: cafeList[index].name,
                            website: cafeList[index].website,
                            mobile: cafeList[index].mobile,
                            image: cafeList[index].image,
                            pikad: cafeList[index].pikad,
                            open: cafeList[index].open,
                          );
                        }),
                      );
                    },
                    title: Text(
                      cafeList[index].name,
                      style: TextStyle(
                        color: Color(0xff593201),
                      ),
                    ),
                    subtitle: Text(
                      'เปิด ' + cafeList[index].open,
                      style: TextStyle(
                        color: Color(0xffC68737),
                      ),
                    ),
                    leading: ClipOval(
                      child: Image.asset(
                        'assets/images/' + cafeList[index].image,
                      ),
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Color(0xffDC7B01),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
