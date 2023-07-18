import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:riilfit/src/modules/dashboard/gym/gyms_list/controller/gym.controller.dart';
import 'package:riilfit/src/presentation/resources/res.dart';
import 'package:riilfit/src/presentation/widgets.dart';

class GymCardUi extends GetView<GymController> {
  const GymCardUi({
    super.key,
    this.isFavorite = false,
    this.isClosed = false,
  });

  final bool isFavorite;
  final bool isClosed;

  @override
  GymController get controller => Get.put(GymController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.openDetailsPage,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: 160.h,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      getFit1,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 24.h,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 0,
                        ).w,
                        decoration: BoxDecoration(
                          color: white.withOpacity(1),
                          borderRadius: const BorderRadius.all(
                            xsmallRadius,
                          ),
                        ),
                        child: Icon(
                          isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border_rounded,
                          color: isFavorite ? wineColor : grayScale100,
                          size: 24,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const TextUi.heading4(
                          'GetFit Gym',
                          color: grayScale50,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 20.h,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ).w,
                          decoration: BoxDecoration(
                            color: grayScale700.withOpacity(.9),
                            borderRadius: const BorderRadius.all(
                              xsmallRadius,
                            ),
                          ),
                          child: TextUi.bodyMed(
                            isClosed ? 'CLOSED' : 'OPEN',
                            color: isClosed
                                ? grayScale900
                                : successDark, //use grayScale900 when closed
                            fontWeight: semiBoldText,
                            height: (16 / 14).w,
                          ),
                        ),
                      ],
                    ),
                    const TextUi.bodySmall(
                      'Lekki phase 1, Lagos',
                      fontSize: 14,
                      color: grayScale50,
                    ),
                    const Gap(4),
                    const Gap(4),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star_half,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: white,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
