import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Category {
  final String title;
  final String content;
  final Color iconBackground;
  final IconStyle icon;
  Category(
      {this.title,
      this.content,
      this.icon,
      this.iconBackground});
}

List<Category> listCategory = [
  Category(
      title: "Home",
      content:
          "Aqui encontra-se suas informações principais.",
      icon: IconStyle(
        iconData: Icons.home, 
        color: Colors.white),
      iconBackground: Colors.cyan),
  Category(
      title: "Favorites",
      content:
          "Verifique seus favoritos aqui. Texto teste para verificar se vai ficar dentro do card. Pelo jeito ficou dentro do card sim que bom :)",
      icon: IconStyle(
        iconData: Icons.star,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Category(
      title: "Messages",
      content:
          "Ibn al-Haytham was the first to explain through experimentation that vision occurs when light bounces on an object and then is directed to one's eyes. He was also an early proponent of the concept that a hypothesis must be proved by experiments based on confirmable procedures or mathematical evidence—hence understanding the scientific method five centuries before Renaissance scientists.",
      icon: IconStyle(
        iconData: Icons.message,
        color: Colors.black87,
      ),
      iconBackground: Colors.yellow),
  Category(
      title: "Al-Bīrūnī",
      content:
          "Biruni is regarded as one of the greatest scholars of the Golden Age of Muslim civilisation and was well versed in physics, mathematics, astronomy, and natural sciences, and also distinguished himself as a historian, chronologist and linguist. He studied almost all fields of science and was compensated for his research and strenuous work. Royalty and powerful members of society sought out Al-Biruni to conduct research and study to uncover certain findings.",
      icon: IconStyle(
        iconData: Icons.account_balance,
        color: Colors.black87,
      ),
      iconBackground: Colors.amber),
  Category(
      title: "Ibn Sina (Avicenna)",
      content:
          "Avicenna (Ibn Sīnā) was a Persian polymath who is regarded as one of the most significant physicians, astronomers, thinkers and writers of the Islamic Golden Age. He has been described as the father of early modern medicine. Of the 450 works he is known to have written, around 240 have survived, including 150 on philosophy and 40 on medicine.\nHis most famous works are The Book of Healing, a philosophical and scientific encyclopedia, and The Canon of Medicine, a medical encyclopedia which became a standard medical text at many medieval universities and remained in use as late as 1650. In 1973, Avicenna's Canon Of Medicine was reprinted in New York.\nBesides philosophy and medicine, Avicenna's corpus includes writings on astronomy, alchemy, geography and geology, psychology, Islamic theology, logic, mathematics, physics and works of poetry.",
      icon: IconStyle(
        iconData: Icons.healing,
        color: Colors.white,
      ),
      iconBackground: Colors.green),
  Category(
      title: "Ibn Rushd (Averroes)",
      content:
          "Averroes was an Andalusian philosopher and thinker who wrote about many subjects, including philosophy, theology, medicine, astronomy, physics, Islamic jurisprudence and law, and linguistics. His philosophical works include numerous commentaries on Aristotle, for which he was known in the West as The Commentator. He also served as a judge and a court physician for the Almohad Caliphate.",
      icon: IconStyle(
        iconData: Icons.blur_circular,
        color: Colors.white,
      ),
      iconBackground: Colors.indigo),
  Category(
      title: "Nasir al-Din Tusi",
      content:
          "Tusi was a Persian polymath, architect, philosopher, physician, scientist, and theologian. He is often considered the creator of trigonometry as a mathematical discipline in its own right. Ibn Khaldun (1332–1406) considered Al-Tusi to be the greatest of the later Persian scholars.",
      icon: IconStyle(
        iconData: Icons.category,
        color: Colors.white,
      ),
      iconBackground: Colors.pinkAccent),
  Category(
      title: "Ibn Battuta",
      content:
          "Over a period of thirty years, Ibn Battuta visited most of the Islamic world and many non-Muslim lands, including North Africa, the Horn of Africa, West Africa, the Middle East, Central Asia, Southeast Asia, South Asia and China. Near the end of his life, he dictated an account of his journeys, titled A Gift to Those Who Contemplate the Wonders of Cities and the Marvels of Travelling (Tuḥfat an-Nuẓẓār fī Gharāʾib al-Amṣār wa ʿAjāʾib al-Asfār), usually simply referred to as The Travels (Rihla). This account of his journeys provides a picture of a medieval civilisation that is still widely consulted today.",
      icon: IconStyle(
        iconData: Icons.navigation,
        color: Colors.white,
      ),
      iconBackground: Colors.deepPurpleAccent),
  Category(
      title: "Ibn Khaldun",
      content:
          "He is widely considered as a forerunner of the modern disciplines of historiography, sociology, economics, and demography.\nHe is best known for his book, the Muqaddimah or Prolegomena ('Introduction'). The book influenced 17th-century Ottoman historians like Kâtip Çelebi, Ahmed Cevdet Pasha and Mustafa Naima, who used the theories in the book to analyse the growth and decline of the Ottoman Empire. Also, 19th-century European scholars acknowledged the significance of the book and considered Ibn Khaldun to be one of the greatest philosophers of the Middle Ages.",
      icon: IconStyle(
        iconData: Icons.supervised_user_circle,
        color: Colors.white,
      ),
      iconBackground: Colors.teal),
  Category(
      title: "Piri Reis",
      content:
          "He is primarily known today for his maps and charts collected in his Kitab-ı Bahriye (Book of Navigation), a book that contains detailed information on navigation, as well as very accurate charts (for their time) describing the important ports and cities of the Mediterranean Sea. He gained fame as a cartographer when a small part of his first world map (prepared in 1513) was discovered in 1929 at the Topkapı Palace in Istanbul. His world map is the oldest known Turkish atlas showing the New World, and one of the oldest maps of America still in existence anywhere (the oldest known map of America that is still in existence is the map drawn by Juan de la Cosa in 1500). Piri Reis' map is centered on the Sahara at the latitude of the Tropic of Cancer.",
      icon: IconStyle(
        iconData: Icons.map,
        color: Colors.white,
      ),
      iconBackground: Colors.blue),
];