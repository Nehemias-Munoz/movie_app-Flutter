import 'package:flutter/material.dart';
import 'package:movies/config/constant/app_constant.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstant.getSize(context).height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => _MoviePoster(),
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'details'),
      child: Container(
        margin: const EdgeInsets.all(7.0),
        height: AppConstant.getSize(context).height * .9,
        width: AppConstant.getSize(context).width * .30,
        child: const Column(
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: FadeInImage(
                  fit: BoxFit.contain,
                  //Todo: replace with assetimage
                  placeholder: NetworkImage('https://placehold.co/500x700/png'),
                  image: NetworkImage('https://placehold.co/500x700/png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'title',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
