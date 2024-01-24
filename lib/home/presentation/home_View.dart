import 'package:company_profile/constants.dart';
import 'package:company_profile/home/data/manager/cubit.dart';
import 'package:company_profile/home/data/manager/states.dart';
import 'package:company_profile/home/presentation/widgets/ReadMore/readMore_body.dart';
import 'package:company_profile/home/presentation/widgets/differentWidgets/title_description..dart';
import 'package:company_profile/home/presentation/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../data/model/clientsModel.dart';
import '../data/model/serviceModel.dart';
import '../data/model/workModel.dart';
import 'widgets/differentWidgets/defaultTextField.dart';
import 'widgets/previous_work/previousWork_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<WorkModel> worklist = [
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
    WorkModel(
        workType: "ترفيهي",
        workTitle: "بوليفارد الرياض",
        workDescription: "",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "مجمع فيلات الفاخرية",
        workDescription:
            'يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2',
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "فيلا دوبلاكس",
        workDescription: "خاصة\n مساحات 960 - 1450 - 1630 م",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "مجمع فيلات الفاخرية",
        workDescription:
            'يتكون من 30 فيلا متصلة ومنفصلة بمساحات اجمالية 14,800 م2',
        image: 'assets/images/building1.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "المكرم/ سعيد عبداللة القحطانى",
        workDescription: "بمدينة الدمام على مساحة اجمالى 17,000 م2",
        image: 'assets/images/building4.png'),
    WorkModel(
        workType: "سكني",
        workTitle: "فيلا دوبلاكس",
        workDescription: "خاصة\n مساحات 960 - 1450 - 1630 م",
        image: 'assets/images/building3.png'),
    WorkModel(
        workType: "ترفيهي",
        workTitle: "بوليفارد الرياض",
        workDescription: "",
        image: 'assets/images/building3.png'),
  ];

  final List<ServiceModel> serviceList = [
    ServiceModel(
      serviceTitle: "انشاء المباني وصيانتها",
      serviceDescription:
          "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.",
      image: "assets/images/1.png",
      textLeft: false,
    ),
    ServiceModel(
        serviceTitle: "أعمال الالكتروميكانيكال",
        serviceDescription:
            "تنفيذ أعمال الكهرباء التي تتميز بالجودة والإبداع في التصميم والتركيب، منذ لحظة تشييد المبنى أو المنشأةبتركيب المواسير الكهربائية واستخدام أسلاك ذات نوعية جيدة ومتناسبة مع الأحمال الكهربائية، ومن ثم إيصالالكهرباء إلى وحدات التحكم الرئيسة الموجودة في كل وحدات المبنى وكذلك عمل التوصيلات اللازمة للإنارةتنفيذ شبكة المعلومات والاتصالات وكاميرات المراقبة وشبكة إنذار الحريق والتلفزيون المركزي والإذاعة الصوتيةوغيرها من الأنظمة، وتنفيذ أعمال الكهرباء من الداخل ، ويتم ذلك وفقاً لرغبات العميل وطبقا للمواصفات",
        image: "assets/images/2.png",
        textLeft: true),
    ServiceModel(
        serviceTitle: "التطوير العقاري",
        serviceDescription:
            "والذي يشمل علي عملية توفير التمويل اللازم ووضع الأفكار ودراسة الجدوى والتسويق والمعرفة الدقيقةبالسوق وامتلاك الأراضي والبناء عليها وذلك بتحويل الأفكار والرؤى الحديثة إلى واقع ملموس من خلال رفعقيمة العقار للخروج في النهاية بوحدات عقارية ناجحة تتناسب مع احتياجات المجتمع وخاصة الشباب وتعودبالنفع على الجميع.",
        image: "assets/images/3.png",
        textLeft: false),
    ServiceModel(
        serviceTitle: "الأعمال المعدنية",
        serviceDescription:
            "قامت شركة البناء الحديث للمقاولات العامة بتنفيذ بعض المباني الحديدية مثل الهناجر والمستودعات والمبانيالمكتبية في الدمام ومدينة الجبيل الصناعية تحت إشراف الهيئة الملكية ولدينا خبرة جيدة في هذا المجال معتنفيذ ما تحتاجه هذه المباني من أعمال مدنية وبنية تحتية.",
        image: "assets/images/4.png",
        textLeft: true),
  ];

  final List<ClientsModel> clientsList = [
    ClientsModel(
        image: "assets/images/client2.png",
        description: "الوزارة المسؤولة عن التخطيط العمراني لمدن المملكة"),
    ClientsModel(
        image: "assets/images/client3.png",
        description: "الشركة السعودية للصناعات الأساسية"),
    ClientsModel(
        image: "assets/images/client4.png",
        description: "واحدة من أكبر المجموعات في المملكة العربية السعودية"),
    ClientsModel(
        image: "assets/images/client5.png",
        description: "الهيئة الوطنية الامريكية للحماية من الحرائق"),
    ClientsModel(
        image: "assets/images/client1.png",
        description:
            "ارامكو إحدى أكبر شركات الطاقة والكيميائيات المتكاملة في العالم"),
    ClientsModel(
        image: "assets/images/client4.png",
        description: "واحدة من أكبر المجموعات في المملكة العربية السعودية"),
    ClientsModel(
        image: "assets/images/client5.png",
        description: "الهيئة الوطنية الامريكية للحماية من الحرائق"),
    ClientsModel(
        image: "assets/images/client1.png",
        description:
            "ارامكو إحدى أكبر شركات الطاقة والكيميائيات المتكاملة في العالم"),
    ClientsModel(
        image: "assets/images/client3.png",
        description: "الشركة السعودية للصناعات الأساسية"),
    ClientsModel(
        image: "assets/images/client2.png",
        description: "الوزارة المسؤولة عن التخطيط العمراني لمدن المملكة"),
  ];

  final List<ServiceModel> distinguishList = [
    ServiceModel(
      serviceTitle: "الخبرة",
      serviceDescription:
          "نتمتع بخبرة عالية على مدار سنوات في انشاء المنشآت بكافة أنواعها",
      image: "assets/images/crown.png",
      textLeft: false,
    ),
    ServiceModel(
      serviceTitle: "الجودة",
      serviceDescription: "نستخدم أجود أنواع المواد والخامات أثناء الانشاء",
      image: "assets/images/reward.png",
      textLeft: false,
    ),
    ServiceModel(
      serviceTitle: "السعر",
      serviceDescription:
          "نقدم لعملائنا أسعارا تنافسية وتكلفة أقل مع ضمان تقديم الخدمة بكفاءة عالية.",
      image: "assets/images/investment.png",
      textLeft: false,
    ),
    ServiceModel(
      serviceTitle: "الإتقان",
      serviceDescription:
          "نراعي عند تنفيذ المشروع الدقة والإتقان تحت إشراف فنين و متخصصين",
      image: "assets/images/retention.png",
      textLeft: false,
    ),
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController serviceController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = BrokerCubit.get(context);
    return BlocBuilder<BrokerCubit, BrokerStates>(
      builder: (context, state) => SingleChildScrollView(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                // height: 174.0,
                foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 39, 35, 51),
                    Color.fromARGB(255, 39, 35, 51),
                    Color.fromARGB(114, 0, 0, 0),
                    Color.fromARGB(216, 0, 0, 0),
                    Color.fromARGB(183, 0, 0, 0),
                  ],
                )),
                child: Image(
                  image: const AssetImage(
                    "assets/images/ksa.png",
                  ),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  alignment: Alignment.center,
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                  Condition.largerThan(name: TABLET)
                ],

                //////////////////////////// Mobile&&Tablet
                replacement: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultText("متخصصون فى المقاولات", 20, FontWeight.w200,
                        height: 1, color: primaryC4),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "شركة البناء الحديث للمقاولات العامة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Alexandria",
                          fontWeight: FontWeight.w200,
                          fontSize: 30,
                          height: 1.5,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: const Text(
                        "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 18,
                            height: 1.5,
                            fontFamily: "Alexandria",
                            color: Color.fromARGB(250, 255, 255, 255)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 38,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom().copyWith(
                          shape: MaterialStateProperty.resolveWith<
                              RoundedRectangleBorder>(
                            (states) {
                              if (states.contains(MaterialState.hovered)) {
                                return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color(0xffD19026)));
                              }
                              return RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.white));
                            },
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xffD19026);
                              }
                              return const Color.fromARGB(28, 255, 255, 255);
                            },
                          ),
                        ),
                        onPressed: () {
                          cubit.selectAppBar(10);
                        },
                        child: const Text(
                          "اقرأ المزيد",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                    // ,SizedBox(height: 20,)
                  ],
                ),

                //////////////////////WEB

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "متخصصون فى المقاولات",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 24,
                          ////////////////
                          fontFamily: "Alexandria",
                          color: primaryC4),
                    ),
                    const Text(
                      "شركة البناء الحديث للمقاولات العامة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          height: 1.8,
                          fontFamily: "Alexandria",
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: const Text(
                        "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            height: 1.8,
                            fontFamily: "Alexandria",
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      height: 38,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom().copyWith(
                          shape: MaterialStateProperty.resolveWith<
                              RoundedRectangleBorder>(
                            (states) {
                              if (states.contains(MaterialState.hovered)) {
                                return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color(0xffD19026)));
                              }
                              return RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.white));
                            },
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color(0xffD19026);
                              }
                              return const Color.fromARGB(28, 255, 255, 255);
                            },
                          ),
                        ),
                        onPressed: () {
                          cubit.selectAppBar(10);
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) {
                          //     return ReadMoreScreen();
                          //   },
                          // ));
                        },
                        child: const Text(
                          "اقرأ المزيد",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Alexandria",
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 40,
            ),
            ReadMoreBody(),
            SizedBox(
              height: 15,
            ),
            ///////////////////
            ///Responsive distinguish part
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                  Condition.largerThan(name: TABLET)
                ],
                replacement: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Image.asset("assets/images/distinguish.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TitleAndDescriptionWidget(
                          title: "ما يميزنا",
                          description:
                              "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                          itemCount: distinguishList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Container(
                                width: 230,
                                // height: ,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: primaryC7,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      distinguishList[index].image,
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      distinguishList[index].serviceTitle,
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: primaryC3),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      width: 230,
                                      child: Text(
                                        distinguishList[index]
                                            .serviceDescription,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Alexandria",
                                            fontSize: 9,
                                            fontWeight: FontWeight.w100,
                                            color: basicC3,
                                            height: 1.8),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                ////////////////web
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .5,
                              child: TitleAndDescriptionWidget(
                                  title: "ما يميزنا",
                                  description:
                                      "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات")),
                          Spacer(),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .3,
                              child:
                                  Image.asset("assets/images/distinguish.png"))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        height: 200,
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context)
                              .copyWith(scrollbars: false, overscroll: false),
                          child: ListView.builder(
                            // physics: PageScrollPhysics(),

                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: primaryC7,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        distinguishList[index].image,
                                        width: 65,
                                        height: 65,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      defaultText(
                                          distinguishList[index].serviceTitle,
                                          15,
                                          FontWeight.w200,
                                          color: primaryC3),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: 260,
                                        child: Text(
                                          distinguishList[index]
                                              .serviceDescription,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12,
                                              height: 1.8,
                                              fontFamily: "Alexandria",
                                              fontWeight: FontWeight.w100,
                                              color: basicC2),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 280,
                                      //   child: defaultText(
                                      //       distinguishList[index]
                                      //           .serviceDescription,
                                      //       12,

                                      //       FontWeight.w100,
                                      //       color: basicC2,
                                      //       textAlign: TextAlign.center
                                      //       ),
                                      // ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ///////////////////////

            SizedBox(
              height: 15,
            ),
            //////////////////Responsive services
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET)
              ],
              replacement: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleAndDescriptionWidget(
                        title: "خدماتنا",
                        description:
                            "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات"),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: InkWell(
                        onTap: () {
                          cubit.selectAppBar(4);
                        },
                        child: SizedBox(
                            height: 35,
                            width: 165,
                            child: HoverWidget(
                              hoverChild: Container(
                                decoration: BoxDecoration(
                                    color: primaryC4,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "عرض الخدمات",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 18,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              onHover: (event) {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    // color: primaryC4,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "عرض الخدمات",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Alexandria",
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                    ////
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 15.0,
                        // childAspectRatio: 5 / 6.6,
                        // maxCrossAxisExtent: 400,
                        maxCrossAxisExtent: 405,
                        childAspectRatio: 5 / 6.4,

                        // mainAxisExtent: 410
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: serviceList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            cubit.selectAppBar(9);
                          },
                          child: HoverWidget(
                            onHover: (event) {},
                            hoverChild: Container(
                              padding: EdgeInsets.only(
                                  right: 3, left: 3, bottom: 25, top: 10),
                              decoration: BoxDecoration(
                                color: primaryC5,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      serviceList[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  defaultText(serviceList[index].serviceTitle,
                                      20, FontWeight.w400,
                                      height: 1.5, color: primaryC2),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Text(
                                      serviceList[index].serviceDescription,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: "Alexandria",
                                          color: Colors.white),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "تعرف على المزيد",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: "Alexandria",
                                            color: primaryC2),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: primaryC2,
                                        size: 14,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 3, left: 3, bottom: 25, top: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      serviceList[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  defaultText(serviceList[index].serviceTitle,
                                      20, FontWeight.w400,
                                      height: 1.5, color: primaryC4),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    // height:
                                    //     MediaQuery.of(context).size.height * .16,
                                    // width: MediaQuery.of(context).size.width * .2,
                                    child: Text(
                                      serviceList[index].serviceDescription,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: "Alexandria",
                                          color: basicC3),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "تعرف على المزيد",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: "Alexandria",
                                            color: primaryC5),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: primaryC5,
                                        size: 14,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              ////////////web
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: const TitleAndDescriptionWidget(
                              title: "خدماتنا",
                              description:
                                  "لدينا فريق هندسى متخصص فى المجال ، مجهز بأحدس الادوات وافضل الخامات"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: InkWell(
                            onTap: () {
                              cubit.selectAppBar(4);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 165,
                                child: HoverWidget(
                                  hoverChild: Container(
                                    decoration: BoxDecoration(
                                        color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض الخدمات",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        // color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض الخدمات",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                          childAspectRatio: 5 / 7,
                          maxCrossAxisExtent: 350,
                          mainAxisExtent:
                              MediaQuery.of(context).size.width > 1000
                                  ? 428
                                  : 440),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: serviceList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            cubit.selectAppBar(9);
                          },
                          child: HoverWidget(
                            onHover: (event) {},
                            hoverChild: Container(
                              padding:
                                  EdgeInsets.only(right: 3, left: 3, bottom: 5),
                              decoration: BoxDecoration(
                                color: primaryC5,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      serviceList[index].image,
                                      // width: 280,
                                      // width: MediaQuery.of(context).size.width * .2,
                                      // // height: 230,
                                      // height:
                                      //     MediaQuery.of(context).size.height * .4,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  defaultText(serviceList[index].serviceTitle,
                                      20, FontWeight.w400,
                                      height: 1.5, color: primaryC2),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    // height:
                                    //     MediaQuery.of(context).size.height * .16,
                                    // width: MediaQuery.of(context).size.width * .2,
                                    child: Text(
                                      serviceList[index].serviceDescription,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: "Alexandria",
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "تعرف على المزيد",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: "Alexandria",
                                            color: primaryC2),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: primaryC2,
                                        size: 12,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            child: Container(
                              padding:
                                  EdgeInsets.only(right: 3, left: 3, bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      serviceList[index].image,
                                      // width: 280,
                                      // width: MediaQuery.of(context).size.width * .2,
                                      // // height: 230,
                                      // height:
                                      //     MediaQuery.of(context).size.height * .4,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  defaultText(serviceList[index].serviceTitle,
                                      20, FontWeight.w400,
                                      height: 1.5, color: primaryC4),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    // height:
                                    //     MediaQuery.of(context).size.height * .16,
                                    // width: MediaQuery.of(context).size.width * .2,
                                    child: Text(
                                      serviceList[index].serviceDescription,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          height: 1.5,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: "Alexandria",
                                          color: basicC3),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "تعرف على المزيد",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: "Alexandria",
                                            color: primaryC5),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: primaryC5,
                                        size: 12,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            /////////////////
            SizedBox(height: 15),

            ///////////////// responsive work
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              //////////////Responsive services
              child: ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                  Condition.largerThan(name: TABLET)
                ],
                replacement: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              // width: MediaQuery.of(context).size.width * .5,
                              child: const TitleAndDescriptionWidget(
                                  title: "اعمالنا",
                                  description:
                                      "تقدم شركة البناء الحديث للمقاولات العامة خدمتها لتغطى مجموعه متنوعه من المشاريع المختلفة مثل : التجارية - السكنية - الترفيهية - التعليمية - الصناعية والبنية التحتية وغيرها")),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: InkWell(
                              onTap: () {
                                cubit.selectAppBar(3);
                              },
                              child: SizedBox(
                                  height: 35,
                                  width: 165,
                                  child: HoverWidget(
                                    hoverChild: Container(
                                      decoration: BoxDecoration(
                                          color: primaryC4,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "عرض جميع الاعمال",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                    onHover: (event) {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          // color: primaryC4,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "عرض جميع الاعمال",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                        height: 250,
                        // width: 300,
                        child: ListView.builder(
                          itemCount: worklist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                // color: Colors.amber,
                                width: 250,
                                child: PreviousWorkItem(
                                  cubit: cubit,
                                  image: worklist[index].image,
                                  workType: worklist[index].workType!,
                                  workTitle: worklist[index].workTitle,
                                  workDescription:
                                      worklist[index].workDescription,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                ////////////////web
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .5,
                              child: TitleAndDescriptionWidget(
                                  title: "اعمالنا",
                                  description:
                                      "تقدم شركة البناء الحديث للمقاولات العامة خدمتها لتغطى مجموعه متنوعه من المشاريع المختلفة مثل : التجارية - السكنية - الترفيهية - التعليمية - الصناعية والبنية التحتية وغيرها")),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: InkWell(
                              onTap: () {
                                cubit.selectAppBar(3);
                              },
                              child: SizedBox(
                                  height: 35,
                                  width: 165,
                                  child: HoverWidget(
                                    hoverChild: Container(
                                      decoration: BoxDecoration(
                                          color: primaryC4,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "عرض جميع الاعمال",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w200),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                    onHover: (event) {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          // color: primaryC4,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "عرض جميع الاعمال",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        height: 250,
                        // width: 300,
                        child: ListView.builder(
                          itemCount: worklist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                // color: Colors.amber,
                                width: 250,
                                child: PreviousWorkItem(
                                  cubit: cubit,
                                  image: worklist[index].image,
                                  workType: worklist[index].workType!,
                                  workTitle: worklist[index].workTitle,
                                  workDescription:
                                      worklist[index].workDescription,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
////////////////
            Column(
              children: [
                ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [
                    Condition.largerThan(name: MOBILE),
                    Condition.largerThan(name: TABLET)
                  ],
                  replacement: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            // width: MediaQuery.of(context).size.width * .5,
                            child: TitleAndDescriptionWidget(
                                title: "العملاء",
                                description:
                                    "شركاء النجاح، سعداء دائما بخدمتكم")),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: InkWell(
                            onTap: () {
                              cubit.selectAppBar(2);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 165,
                                child: HoverWidget(
                                  hoverChild: Container(
                                    decoration: BoxDecoration(
                                        color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض جميع الشركاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        // color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض جميع الشركاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///////////////web
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            child: TitleAndDescriptionWidget(
                                title: "العملاء",
                                description:
                                    "شركاء النجاح، سعداء دائما بخدمتكم")),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: InkWell(
                            onTap: () {
                              cubit.selectAppBar(2);
                            },
                            child: SizedBox(
                                height: 35,
                                width: 165,
                                child: HoverWidget(
                                  hoverChild: Container(
                                    decoration: BoxDecoration(
                                        color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض جميع الشركاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                  onHover: (event) {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        // color: primaryC4,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "عرض جميع الشركاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Alexandria",
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ResponsiveVisibility(
                  visibleWhen: [
                    Condition.largerThan(name: MOBILE),
                    Condition.largerThan(name: TABLET)
                  ],
                  visible: false,
                  replacement: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                      height: 200,
                      // width: 300,
                      child: ListView.builder(
                        itemCount: worklist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              // color: Colors.amber,
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 130,
                                    width: 240,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Image.asset(
                                      clientsList[index].image,
                                      height: 10,
                                      width: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: 240,
                                      // height: ,
                                      child: Center(
                                          child: Text(
                                        clientsList[0].description,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Alexandria",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: primaryC2),
                                      )))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: SizedBox(
                      height: 200,
                      // width: 300,
                      child: ListView.builder(
                        itemCount: worklist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              // color: Colors.amber,
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 130,
                                    width: 240,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(32)),
                                    child: Image.asset(
                                      clientsList[index].image,
                                      height: 10,
                                      width: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: 240,
                                      // height: ,
                                      child: Center(
                                          child: Text(
                                        clientsList[0].description,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Alexandria",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: primaryC2),
                                      )))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 15),

            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ResponsiveVisibility(
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                  Condition.largerThan(name: TABLET)
                ],
                visible: false,
                replacement: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      // width: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              child: Image.asset(
                                "assets/images/lightLogo.png",
                                // width: 300,
                                width: MediaQuery.of(context).size.width * .9,

                                // MediaQuery.of(context).size.width * .3,

                                // height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                              // width: 400,
                              // width: MediaQuery.of(context).size.width * .32,

                              width: MediaQuery.of(context).size.width * .9,
                              child: Text(
                                "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: basicC3,
                                    height: 1.8,
                                    fontFamily: "Alexandria"),
                              )
                              //  defaultText(
                              //   "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                              //   20,
                              //   FontWeight.w500,
                              //   color: basicC3,
                              //   textAlign: TextAlign.center,
                              // ),
                              )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .96,

                      // width: 500,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: primaryC7,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          // width: MediaQuery.of(context).size.width * .45,
                          // width: 500,
                          // width: MediaQuery.of(context).size.width * .8,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: defaultText(
                                      "تواصل معنا", 28, FontWeight.w600,
                                      color: primaryC3),
                                ),
                                Form(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: nameController,
                                          prefix: Icon(Icons.person),
                                          labelText: "الاسم"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: phoneController,
                                          prefix: Icon(Icons.phone_enabled),
                                          labelText: "الجوال"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: emailController,
                                          prefix: Icon(Icons.email),
                                          labelText: "البريد الالكتروني"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          suffix:
                                              Icon(Icons.keyboard_arrow_down),
                                          controller: serviceController,
                                          prefix:
                                              Icon(Icons.all_inbox_outlined),
                                          labelText: "الخدمة"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                        controller: messageController,
                                        labelText: "الرسالة",
                                        maxLines: 6,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: double.infinity,
                                          height: 45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: primaryC4),
                                          child: Center(
                                              child: Text(
                                            "ارسال",
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20),
                                          )),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              ]),
                        ),
                      ),
                    ),
                  ],
                )
                /////////////////////
                ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      // width: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              child: Image.asset(
                                "assets/images/lightLogo.png",
                                // width: 300,
                                width: MediaQuery.of(context).size.width * .3,

                                // height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              // width: 400,
                              width: MediaQuery.of(context).size.width * .32,
                              child: Text(
                                "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: basicC3,
                                    height: 1.8,
                                    fontFamily: "Alexandria"),
                              )

                              // child: defaultText(
                              //   "احدى الشركات الرائدة فى اعمال المقاولات والبناء الحديث فى المملكة العربية السعودية",
                              //   20,
                              //   FontWeight.w500,
                              //   color: basicC3,
                              //   textAlign: TextAlign.center,
                              // ),
                              )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .4,

                      // width: 500,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: primaryC7,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          // width: MediaQuery.of(context).size.width * .45,
                          // width: 500,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: defaultText(
                                      "تواصل معنا", 28, FontWeight.w600,
                                      color: primaryC3),
                                ),
                                Form(
                                    child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: nameController,
                                          prefix: Icon(Icons.person),
                                          labelText: "الاسم"),
                                    ),
                                    MediaQuery.of(context).size.width > 1000
                                        ? Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 6,
                                                      horizontal: 4),
                                                  child: DefaultTextField(
                                                      controller:
                                                          phoneController,
                                                      prefix: Icon(
                                                          Icons.phone_enabled),
                                                      labelText: "الجوال"),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 6,
                                                      horizontal: 4),
                                                  child: DefaultTextField(
                                                      controller:
                                                          emailController,
                                                      prefix: Icon(Icons.email),
                                                      labelText:
                                                          "البريد الالكتروني"),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 6,
                                                        horizontal: 4),
                                                child: DefaultTextField(
                                                    controller: phoneController,
                                                    prefix: Icon(
                                                        Icons.phone_enabled),
                                                    labelText: "الجوال"),
                                              ),
                                            ],
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          controller: emailController,
                                          prefix: Icon(Icons.email),
                                          labelText: "البريد الالكتروني"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                          suffix:
                                              Icon(Icons.keyboard_arrow_down),
                                          controller: serviceController,
                                          prefix:
                                              Icon(Icons.all_inbox_outlined),
                                          labelText: "الخدمة"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: DefaultTextField(
                                        controller: messageController,
                                        labelText: "الرسالة",
                                        maxLines: 6,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          width: double.infinity,
                                          height: 45,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: primaryC4),
                                          child: Center(
                                              child: Text(
                                            "ارسال",
                                            style: TextStyle(
                                                fontFamily: "Alexandria",
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20),
                                          )
                                              // child: defaultText(, 20,
                                              //     FontWeight.w400,
                                              //     color: Colors.white),
                                              ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MyFooter()
          ],
        ),
      ),
    );
  }
}
