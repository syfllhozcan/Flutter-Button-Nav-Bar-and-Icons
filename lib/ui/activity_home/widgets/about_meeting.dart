import 'package:button_nav_bar/ui/activity_home/widgets/social_media_space.dart';
import 'package:flutter/material.dart';

class AboutMeeting extends StatelessWidget {
  const AboutMeeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xfff6f8f7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutMeetingTitle(),
            const SizedBox(
              height: 5,
            ),
            AboutMeetingExtension(),
            const SizedBox(
              height: 20,
            ),
            BuildDivider(),
            const SizedBox(
              height: 20,
            ),
            //BuildGoogleMap(),
            const SizedBox(
              height: 20,
            ),
            BuildWhere(),
            const SizedBox(
              height: 5,
            ),
            BuildAddress(),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFF5A60FF),
                  ),
                ),
                child: const Text(
                  'Google Map',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            BuildDivider(),
            const SizedBox(
              height: 20,
            ),
            BuildShareEventTitle(),
            const SizedBox(
              height: 5,
            ),
            SocialMediaSpace(),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
  }

  Container BuildShareEventTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Etkinliği Paylaş",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container BuildAddress() {
    return Container(
      child: Text(
        "Kaleardı, Zihni Tastan Sokak No:2, 58080 Sivas Merkez/Sivas",
        style: TextStyle(
          fontSize: 13,
          color: Colors.black87,
        ),
      ),
    );
  }

  Container BuildWhere() {
    return Container(
      // alignment: Alignment.centerLeft,
      child: Text(
        "Sivas Ticater ve Sanayi Odası",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Divider BuildDivider() {
    return const Divider(
      height: 1,
      indent: 0,
      endIndent: 0,
      color: Colors.black,
    );
  }

  Container AboutMeetingExtension() {
    return Container(
      //alignment: Alignment.centerLeft,
      child: Text(
        "Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli 'buraya metin gelecek, buraya metin gelecek' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır.\n Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. \nAyrıca arama motorlarında 'lorem ipsum' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.",
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          wordSpacing: 3,
          height: 1.5,
        ),
      ),
    );
  }

  Container AboutMeetingTitle() {
    return Container(
      // alignment: Alignment.centerLeft,
      child: Text(
        "Eklenti Hakkında",
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
