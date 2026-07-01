import 'package:flutter/material.dart';

import '../models/emergency_service.dart';
import '../services/call_service.dart';

class EmergencyCard extends StatelessWidget {
  final EmergencyService service;

  const EmergencyCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(service.title),
                content: Text("Call ${service.number} ?"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context);
                      CallService.call(service.number);
                    },
                    child: const Text("Call"),
                  ),
                ],
              );
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: service.color,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: service.color.withOpacity(.2),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14), // تقليل البادينج الداخلي قليلاً للمساحة
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // توزيع العناصر بالعدل حسب المساحة المتاحة
                children: [
                  // 1. الأيقونة داخل الدائرة
                  CircleAvatar(
                    radius: constraints.maxHeight * 0.18, // حجم ديناميكي بناءً على ارتفاع الكارت
                    backgroundColor: Colors.white,
                    child: Icon(
                      service.icon,
                      size: constraints.maxHeight * 0.2, // حجم ديناميكي للأيقونة
                      color: service.color,
                    ),
                  ),

                  // 2. النصوص (العنوان والوصف) داخل Column مرن
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        service.title,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis, // حماية من الـ Overflow إذا كان الاسم طويلاً
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        service.subtitle,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis, // حماية في حالة النصوص الطويلة مثل (Medical Emergency)
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.85),
                        ),
                      ),
                    ],
                  ),

                  // 3. رقم الطوارئ السفلي
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      service.number,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: service.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}