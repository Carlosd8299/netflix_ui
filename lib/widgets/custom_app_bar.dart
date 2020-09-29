import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';

import '../assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(name: "Home", onTap: () => print("Home")),
                _AppBarButton(name: "TVShos", onTap: () => print("TvShows")),
                _AppBarButton(name: "Movies", onTap: () => print("Movies")),
                _AppBarButton(name: "My List", onTap: () => print("List")),
                _AppBarButton(name: "Lastest", onTap: () => print("Lastest")),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => print("Search"),
                  iconSize: 28,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child:
                      _AppBarButton(name: "Kids", onTap: () => print("Kids")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: _AppBarButton(name: "DVD", onTap: () => print("DVD")),
                ),
                IconButton(
                  icon: Icon(Icons.card_giftcard),
                  onPressed: () => print("GiftCard"),
                  iconSize: 28,
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () => print("Notification"),
                  iconSize: 28,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(name: "TVShos", onTap: () => print("TvShows")),
                _AppBarButton(name: "Movies", onTap: () => print("Movies")),
                _AppBarButton(name: "My List", onTap: () => print("List")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String name;
  final Function onTap;

  const _AppBarButton({
    Key key,
    @required this.name,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
