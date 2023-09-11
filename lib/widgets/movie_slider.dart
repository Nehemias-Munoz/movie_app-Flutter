import 'package:flutter/material.dart';
import 'package:movies/config/constant/app_constant.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstant.getSize(context).height * 0.25,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text('Populares'),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => Container(
                margin: const EdgeInsets.all(7.0),
                color: Colors.red,
                height: AppConstant.getSize(context).height * .9,
                width: AppConstant.getSize(context).width * .35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
