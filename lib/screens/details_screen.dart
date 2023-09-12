import 'package:flutter/material.dart';
import 'package:movies/config/constant/app_constant.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //argumento desde home
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-data';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
            ]),
          ),
        ],
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: FadeInImage(
              placeholder: const AssetImage("assets/gifs/loading-gif.gif"),
              image: NetworkImage("https://placehold.co/200x300/png"),
              height: AppConstant.getSize(context).height * .25,
              width: AppConstant.getSize(context).width * .25,
            ),
          ),
          SizedBox(
            width: AppConstant.getSize(context).width * .05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                "movie.original.title",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                children: [Icon(Icons.star), Text("movie.average")],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text("movie.title",
            style: TextStyle(shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 2.0,
                offset: Offset(.5, .5),
              )
            ])),
        background: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage("assets/gifs/loading-gif.gif"),
          image: NetworkImage("https://placehold.co/500x200/png"),
        ),
      ),
    );
  }
}
