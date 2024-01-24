import 'package:company_profile/home/data/model/serviceModel.dart';
import 'package:company_profile/home/presentation/widgets/footer.dart';
import 'package:company_profile/home/presentation/widgets/OurServices/widget_next_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../constants.dart';
import '../navBar/content_navbar.dart';
import '../differentWidgets/text_overImage.dart';

class OurServicesBody extends StatelessWidget {
  OurServicesBody({super.key});
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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TextOverImage(
              title: "خدماتنا",
              subTitle: "جميع خدماتنا",
              image: "assets/images/servicesbg.png"),
          ContentNavBar(
              navcontent: Row(
            children: [
              ResponsiveVisibility(
                 visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
                Condition.largerThan(name: TABLET),
              ],
              replacement:
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: defaultText("خدماتنا", 12, FontWeight.w500,
                      color: primaryC2),
                )
              ,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: defaultText("خدماتنا", 16, FontWeight.w500,
                      color: primaryC2),
                ),
              ),
            ],
          )),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(serviceList.length, (index) {
              return serviceList[index].textLeft
                  ? Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 30, top: 30),
                      child: WidgetNextImage(
                          image: serviceList[index].image,
                          title: serviceList[index].serviceTitle,
                          text: serviceList[index].serviceDescription,
                          textLeft: serviceList[index].textLeft),
                    )
                  : Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: WidgetNextImage(
                          image: serviceList[index].image,
                          title: serviceList[index].serviceTitle,
                          text: serviceList[index].serviceDescription,
                          textLeft: serviceList[index].textLeft),
                    );
              
            }),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 30, bottom: 30),
          //   child: WidgetNextImage(
          //       image: "assets/images/HandShake.jpeg",
          //       title: "انشاء المباني وصيانتها",
          //       text:
          //           "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.",
          //       textLeft: false),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   color: Colors.white,
          //   width: double.infinity,
          //   padding: EdgeInsets.only(bottom: 30, top: 30),
          //   child: const WidgetNextImage(
          //       image: "assets/images/HandShake.jpeg",
          //       title: "انشاء المباني وصيانتها",
          //       text:
          //           "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.",
          //       textLeft: true),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 30, bottom: 30),
          //   child: WidgetNextImage(
          //       image: "assets/images/HandShake.jpeg",
          //       title: "انشاء المباني وصيانتها",
          //       text:
          //           "تقوم شركة البناء الحديث للمقاولات العامة بكافة أعمال المقاولات من حيث إنشاء وصيانة المباني، مثل العقارات السكنية والشركات الخاصة، وتشييد المدارس والمستشفيات والمراكز التجارية والمولات، بالإضافة للفلل والقصور والبيوت وغير ذلك، وتتميز المؤسسة بتوفير عدد كبير من العمالة المتخصصة في أعمال البناء المختلفة ومتطلباتها، مثل السباكة والنجارة والحدادة والصرف الصحي وغيرها بالتنسيق مع أفضل المهندسين المحترفين، بالإضافة إلى الاستشاريين في المجال الهندسي والإنشائي والمعماري مع توفير كافة مواد البناء اللازمة والأدوات الضرورية للعمل.",
          //       textLeft: false),
          // ),

          // const SizedBox(
          //   height: 40,
          // ),
          MyFooter()
        ],
      ),
    );
  }
}
