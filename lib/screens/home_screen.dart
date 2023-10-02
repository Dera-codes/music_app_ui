import 'package:flutter/material.dart';

import '../models/song_model.dart';
import '../widgets/section_header.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _DiscoverMusic(),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: SectionHeader(title: 'Trending Music'),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songs.length,
                        itemBuilder: (context, index) {
                          return SongCard(song: songs[index]);
                        },
                      ),
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

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 5.0),
          Text(
            'Enjoy your favorite music',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_fill_outlined),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://instagram.flos1-1.fna.fbcdn.net/v/t51.2885-19/286920825_1166260887528838_4214319394795020627_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.flos1-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=scDBYVYhaoQAX8eBONM&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAS9pwoIg8FaROMcda8s1s1-VGKC5EXTyeTpk_RCCrt9Q&oe=6519E056&_nc_sid=8b3546'),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
