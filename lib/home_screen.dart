import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:suryadayamun/constants.dart';
import 'package:suryadayamun/notifications_screen.dart';
import 'package:suryadayamun/screens/introduction.dart';
import 'package:suryadayamun/search_screen.dart';
import 'package:suryadayamun/widget/dashboard_card.dart';
import 'package:suryadayamun/widget/heading.dart';
import 'package:suryadayamun/widget/listtile.dart';
import 'package:suryadayamun/widget/officials.dart';
import 'package:suryadayamun/widget/quicklink.dart';
import 'package:suryadayamun/widget/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'widget/drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List img = [
    'assets/slider1.jpg',
    'assets/slider2.jpg',
    'assets/slider3.jpg',
    'assets/slider4.jpg',
    'assets/slider5.jpg',
    'assets/slider6.jpg',
  ];
  int currentindex = 0;
  var readmore = false;

  @override
  void initState() {
    print(currentindex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customdrawer(),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              buildAppbar(context),
              // buildsizedbox(),
              buildImgslider(),
              const SizedBox(
                height: 10,
              ),
              DotsIndicator(
                dotsCount: img.length,
                position: currentindex.toDouble(),
                decorator: DotsDecorator(
                    size: Size.square(9.0),
                    activeSize: Size(18.0, 9.0),
                    activeColor: Colors.red,
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
              buildsizedbox(),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  DashboardCard(
                      img: AppIcons.home,
                      title: 'हाम्रो परिचय',
                      ontap: () {
                        Get.to(() => const IntroductionScreen());
                      }),
                  buildDashboardCard(),
                  DashboardCard(img: AppIcons.calender, title: 'हाम्रो परिचय'),
                  DashboardCard(img: AppIcons.checklist, title: 'हाम्रो परिचय'),
                  DashboardCard(
                      img: AppIcons.nagarpalik, title: 'हाम्रो परिचय'),
                  DashboardCard(img: AppIcons.rajaswa, title: 'हाम्रो परिचय'),
                  DashboardCard(
                      img: AppIcons.suggestion, title: 'हाम्रो परिचय'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              buildsizedbox(),
              Container(
                decoration: const BoxDecoration(
                  color: AppColor.primaryClr,
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(10),
                  //     topRight: Radius.circular(10)),
                ),
                child: const TabBar(
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4,
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  tabs: [
                    Tab(
                      child: Text(
                        'News',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Events',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Notice',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: TabBarView(children: <Widget>[
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      buildNewsList(
                          'assets/news1.jpg',
                          'मिति २०७६/०३/०८ बाट शुरु भएको सूर्योदय नगरपालिकाको पाँचौ नगर सभाका केही झलकहरु',
                          '2022/04/12'),
                      buildNewsList(
                          'assets/news2.jpg',
                          'शिलवन्दी वोलपत्र स्वीकृत गर्ने आसयको सूचना (प्रथम पटक प्रकाशित मिति २०७८/१२/०९)',
                          '2022/04/12'),
                      buildNewsList(
                          'assets/news3.jpg',
                          'शिलवन्दी वोलपत्र स्वीकृत गर्ने आसयको सूचना (प्रथम पटक प्रकाशित मिति २०७८/१२/०९)',
                          '2022/04/12'),
                      buildNewsList(
                          'assets/news4.jpg',
                          'प्रथम सूर्याेदय नगर पर्यटन महाेत्सव उद्घाटन कार्यक्रमका केही झलकहरू।',
                          '2022/04/12'),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      buildListTile(
                          '२०७६/०७/०८ गते बिहान अतिथिहरु सहित अन्तु डाडाको अवलोकन'),
                      buildListTile(
                          '२०७६/०७/०८ गते बिहान अतिथिहरु सहित अन्तु डाडाको अवलोकन'),
                      buildListTile(
                          '२०७६/०७/१६:छब्बिसे छिरुवा कालोपत्रे सडकको शिलन्यास'),
                      buildListTile(
                          '०७/२७/२०७६ : आर्दश आ‍. वि. कजेनीको बार्षिक उत्सव'),
                      buildListTile(
                          '२०७६/०७/०७- गते विहान कार्यपालिकाकाे ६३औ‌ बैठक,  पुर्व प्रधानमन्त्री तथा माननीय सासद श्री झलनाथ खनाल ज्यु,साउदी अरब र संयुक्त राज्य ईमिरेड्सका महामहिम राजदुतहरु सहितलाई स्वागत  तथा अन्तर्क्रिया कार्यक्रम')
                    ],
                  ),
                  const Center(
                    child: Text(
                        'There is currently no content classified with this term.'),
                  ),
                ]),
              ),
              buildsizedbox(),
              Officials(),
              buildsizedbox(),
              QuickLinks(),
              buildsizedbox(),
              OurServices(),
              buildsizedbox(),
              buildHeading('Other Informations'),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: AppColor.primaryClr,
                ),
                child: const TabBar(
                    indicatorColor: AppColor.red,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 4,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          'सार्वजनिक खरीद',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'बजेट तथा कार्यक्रम',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'योजना तथा परियोजना',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TabBarView(children: [
                  ListView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: const [
                      Text(
                          'शिलबन्दी बोलपत्र स्वीकृत गर्ने आशयको सूचना:09-May,2022'),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                          '\nInvitation for Bids (First/Second date of publication: 9th of Baisakh, 2079 (22nd of April, 2022)):23-Apr,2022'),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                          '\nशिलवन्दी वोलपत्र स्वीकृत गर्ने आसयको सूचना (प्रथम पटक प्रकाशित मिति २०७८/१२/०९):23-Mar,2022'),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                          '\nInvitation for Bid/Re-Bid First date of publication: 18th of April, 2022 (5th of Baisakh, 2079):19-Apr,2022'),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  const Text(
                      '\nबिनियोजन ऐन २०७८\nसूर्योदय नगरपालिकाको विनियोजन ऐन, २०७८\nवार्षिक योजना २०७६।०७७\nआ.ब. २०७७/७८ को बजेट सम्बन्धी दस्तावेजहरु\nसूर्योदय नगरपालिकाको आर्थिक ऐन, २०७७\nकार्यक्रम/परियोजनागत बजेट विवरण आ.ब. २०७६/७७'),
                  const Text(
                      '\nबिनियोजन ऐन २०७८\nसूर्योदय नगरपालिकाको विनियोजन ऐन, २०७८\nवार्षिक योजना २०७६।०७७\nआ.ब. २०७७/७८ को बजेट सम्बन्धी दस्तावेजहरु\nसूर्योदय नगरपालिकाको आर्थिक ऐन, २०७७\nकार्यक्रम/परियोजनागत बजेट विवरण आ.ब. २०७६/७७'),
                ]),
              ),
              buildsizedbox(),
              buildHeading('सूचना अधिकारी'),
              const SizedBox(
                height: 10,
              ),
              buildAdhikari(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildsearch(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchScreen()));
      },
      child: Container(
        height: 35,
        width: 45.5.w,
        child: Row(
          children: const [
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            Center(
                child: Text(
              'Search',
              style: TextStyle(fontSize: 15),
            )),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1.4, color: Colors.black)),
      ),
    );
  }

  buildAppbar(context) {
    return Row(
      children: [
        Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 22,
                color: Colors.black,
              )),
        ),
        Image.asset(
          'assets/logo.png',
          height: 30,
        ),
        const Spacer(),
        buildsearch(context),
        const Spacer(),
        IconButton(
          onPressed: () {
            Get.to(() => const NotificationScreen());
          },
          icon: const Icon(
            Icons.notifications,
            size: 30,
          ),
        ),
        //  Switch(value: true, onChanged: (value) {
        //         setState(() {
        //           isSwitched = value;
        //         }),
        IconButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                  height: 70,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                          title: Text('English/नेपाली'),
                          activeColor: AppColor.primaryClr,
                          inactiveThumbColor: AppColor.primaryClr,
                          value: false,
                          onChanged: (value) {})
                    ],
                  )),
              backgroundColor: Colors.white,
            );
          },
          icon: const Icon(
            Icons.more_vert_sharp,
            size: 30,
          ),
        ),
        const Spacer(),
      ],
    );
  }

  buildNewsList(leading, title, subtitle) {
    return ListTile(
      leading: Image.asset(leading),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  buildAdhikari() {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/of.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Text(
              'योगनिधि भट्टराई\nशाखा अधिकृत\nसम्पर्क: ९८४२७२९९८९\nई-मेल: infooff.suryodaya@gmail.com'),
        ],
      ),
    );
  }

  buildTopSlider() {
    return SizedBox(
      height: 150,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/slider1.jpg'),
          Image.asset('assets/slider2.jpg'),
          Image.asset('assets/slider3.jpg'),
        ],
      ),
    );
  }

  buildImgslider() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 150.0,
          autoPlay: true,
          reverse: false,
          viewportFraction: 2.0,
          enlargeCenterPage: true,
          initialPage: currentindex,
          onPageChanged: (index, reason) {
            setState(() {
              currentindex = index;
            });
          }),
      items: img.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ));
          },
        );
      }).toList(),
    );
  }

  buildDashboardCard() {
    return InkWell(
      onTap: () {
        Get.to(() => const IntroductionScreen());
      },
      child: Container(
          height: 130,
          width: 120,
          decoration: BoxDecoration(
              color: const Color.fromARGB(208, 255, 255, 255),
              border: Border.all(color: Colors.grey.shade300, width: 0.5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 1, offset: Offset(2, 1))
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppIcons.logo,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'सूर्योदय नगरपालिका',
                style: TextStyle(fontSize: 15.sp),
              )
            ],
          )),
    );
  }
}
