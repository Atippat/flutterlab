import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.bookmark_border_rounded,
                            Icons.share,
                            Icons.more_vert
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.imageUrl,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    title: "VALORANT starting new act of the episode 7 'Episode 7 Act 2' new battle pass",
    author: "VALOR Esports",
    imageUrl: "https://gumlet.assettype.com/afkgaming%2F2023-08%2Fcef89d1f-5178-4581-9229-1fa3d0e42c58%2FCover_Image___All_Valorant_Episode_7_Act_2_Weekly_Missions___XP_Rewards__Reset_Times__More.jpg?compress=true&dpr=1&w=1200",
    postedOn: "Yesterday",
  ),
  Article(
      title: "VALORANT release new 'Imperium' bundle for the beginning of episode 7 act 2",
      imageUrl: "https://staticg.sportskeeda.com/editor/2023/08/f701c-16931533654512-1920.jpg?w=840",
      author: "VALOR Esports",
      postedOn: "4 hours ago"),
  Article(
    title: "TEKKEN 8 CNT released for PS5, XBOX Series X and Steam",
    author: "TEKKEN Bandai Namco",
    imageUrl: "https://cdn.cloudflare.steamstatic.com/steam/apps/1778820/header.jpg?t=1692957440",
    postedOn: "2 days ago",
  ),
  Article(
    title: "FromSoftware release new Bloodborne new DLC 'The Old Hunters'",
    author: "GAMEFROMIGN",
    imageUrl: "https://upload.wikimedia.org/wikipedia/en/6/68/Bloodborne_Cover_Wallpaper.jpg",
    postedOn: "22 hours ago",
  ),
  Article(
    title:
        "Genshin Impact have the new 4.0 patch note update 'The Fontain City'",
    author: "Hoyoarchive",
    imageUrl: "https://staticg.sportskeeda.com/editor/2023/08/3abc1-16921379874671-1920.jpg?w=840",
    postedOn: "2 hours ago",
  ),
];
