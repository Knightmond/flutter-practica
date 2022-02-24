import 'package:get/get.dart';

class GaleriaController extends GetxController {
  List<String> imageList = [
    "https://i.picsum.photos/id/123/300/200.webp?hmac=NYz4TjU4rj-YnEMr0sJ7VxpQpK72rQduwD3SZF0Ljp8",
    "https://i.picsum.photos/id/660/300/200.webp?hmac=V4xSaERyuyC2WQjxrR863a0SnAZ1Th_KIUsEzucYWd4",
    "https://i.picsum.photos/id/132/300/200.webp?hmac=6mn5Y0DXQLzL3cSHv-KlQQ-HAm9ka3oqrYtPOt-kxcM",
    "https://i.picsum.photos/id/772/300/200.webp?hmac=0TgrzpOnqh56OnoDWtMDERfkyeuE0j_iixFFYByCLXA",
    "https://i.picsum.photos/id/236/300/200.webp?hmac=QY7OUWUT4DBrFmaIOGNsCIm8JVyN3eVmmJAqslNqryA",
    "https://i.picsum.photos/id/125/300/200.webp?hmac=UN1_kegzSa5OEkS3jUVL8gyk67e_UyMb4_OxDcX-AFY",
    "https://i.picsum.photos/id/655/300/200.webp?hmac=LufnZieAbP0iGl8f86VxtD2-lh8bmzNcbjzZX5FfW58",
    "https://i.picsum.photos/id/724/300/200.webp?hmac=LJ6yODYJbO7yw2DCGmHAwylFHcjb56gcXcxBW-PH0qs",
    "https://i.picsum.photos/id/635/300/200.webp?hmac=u76ka-Kr9nWmHVc9YcS1iQiVk3aioVJlcpPSfw1MnOQ",
    "https://i.picsum.photos/id/84/300/200.webp?hmac=GvNXWtnk6xfOH7fZgWS_eWYIF0afAeK4VV2hDlmlgR8",
    "https://i.picsum.photos/id/342/300/200.webp?hmac=BudJQ2OjDdTNb10l54XrwvZwLkTbBIpSj9xpxZJWuBs",
    "https://i.picsum.photos/id/375/300/200.webp?hmac=ouN135Vb0JvqPMsQ3n35jXfTYc8XluvgZbjh9TXRJ_I",
    "https://i.picsum.photos/id/1065/300/200.webp?hmac=t8TdSbiF67Qj-qfUyeBHb5JEh11mfGq99dJHmhgI2c0",
    "https://i.picsum.photos/id/946/300/200.webp?hmac=pD5vvzzNnNZDerodlaH-eNm0x27CCuj6cjv9maITgyU",
    "https://i.picsum.photos/id/179/300/200.webp?hmac=3L2shaYkhdVKZnymY2f0Wy-yDgFl6H2iJV8ltqMl9m8"
  ];
  int i = 0;

  void nextImage(){
    if (i < imageList.length - 1) {
      i++;
    } else {
      i = 0;
    }
    update();
  }

  void prevImage(){
    if (i == 0) {
      i = imageList.length - 1;
    } else {
      i--;
    }
    update();
  }
}
