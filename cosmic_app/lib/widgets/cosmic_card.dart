import 'package:flutter/material.dart';

class CosmicCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final VoidCallback? onTap;

  const CosmicCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(8),
        color: Colors.white,
        child: Container(
          height: 100, // กำหนดความสูงของการ์ดที่ต้องการ
          child: Row(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(8)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: 100, // กำหนดความกว้างของรูปภาพ
                  height: 100, // ปรับความสูงของรูปภาพให้ตรงกับการ์ด
                ),
              ),
              const SizedBox(width: 16), // เพิ่มระยะห่างระหว่างรูปภาพและข้อความ
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // จัดแนวกลางในแนวตั้ง
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // จัดแนวซ้ายในแนวนอน
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'Piazzolla',
                          fontWeight: FontWeight.w700,
                          fontSize: 24, // ปรับขนาด font ของ title ที่นี่
                        ),
                      ),
                      const SizedBox(
                          height: 4), // เว้นระยะระหว่าง title และ description
                      Text(description),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
