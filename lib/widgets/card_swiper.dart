import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:movies/config/constant/app_constant.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: AppConstant.getSize(context).width * 1,
      height: AppConstant.getSize(context).height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: AppConstant.getSize(context).width * 0.6,
        itemHeight: AppConstant.getSize(context).height * 0.9,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.pushNamed(context, "details"),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: "https://placehold.co/500x700/png",
              placeholder: (context, url) =>
                  Image.asset("assets/gifs/loading-gif.gif"),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
