import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //argumento desde home
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-data';
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
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
          //Todo: replace for asset image
          placeholder: NetworkImage("https://placehold.co/500x200/png"),
          image: NetworkImage("https://placehold.co/500x200/png"),
        ),
      ),
    );
  }
}
