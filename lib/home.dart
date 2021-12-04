import 'package:effects_cook_book_app/contents/download_button_example.dart';
import 'package:effects_cook_book_app/contents/drag_a_ui_element_example.dart';
import 'package:effects_cook_book_app/contents/expandable_fab_example.dart';
import 'package:effects_cook_book_app/contents/gradient_chat_bubbles_example.dart';
import 'package:effects_cook_book_app/contents/nested_navigation_flow_example.dart';
import 'package:effects_cook_book_app/contents/photo_filter_carousel_example.dart';
import 'package:effects_cook_book_app/contents/scrolling_parallax_effect_example.dart';
import 'package:effects_cook_book_app/contents/shimmer_loading_effect_example.dart';
import 'package:effects_cook_book_app/contents/staggered_menu_animation_example.dart';
import 'package:effects_cook_book_app/contents/typing_indicator_example.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with RestorationMixin {
  final RestorableInt _currentContentIndex = RestorableInt(0);

  @override
  String? get restorationId => 'home_current_content_index';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentContentIndex, 'current_content_index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildDrawerItemTitle(_ContentsType.values[_currentContentIndex.value]),
      ),
      body: _buildContent(_ContentsType.values[_currentContentIndex.value]),
      drawer: Drawer(
        child: _buildDrawer(),
      ),
    );
  }

  Widget _buildDrawer() {
    const header = UserAccountsDrawerHeader(
      accountName: Text('とだやま'),
      accountEmail: Text('noreply@noreply.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42),
      ),
    );
    var items = <Widget>[header];

    for (var type in _ContentsType.values) {
      items.add(
          ListTile(
            title: _buildDrawerItemTitle(type),
            leading: _buildDrawerItemIcon(type),
            onTap: () {
              setState(() {
                _currentContentIndex.value = type.index;
                Navigator.pop(context);
              });
            },
          )
      );
    }

    return ListView(
      children: items,
    );
  }

  Widget _buildDrawerItemTitle(_ContentsType type) {
    switch (type) {
      case _ContentsType.downloadButton:
        return const Text("Download Button");
      case _ContentsType.nestedNavigationFlow:
        return const Text("Nested Navigation Flow");
      case _ContentsType.photoFilterCarousel:
        return const Text("Photo Filter Carousel");
      case _ContentsType.scrollingParallaxEffect:
        return const Text("Scrolling Parallax Effect");
      case _ContentsType.shimmerLoadingEffect:
        return const Text("Shimmer Loading Effect");
      case _ContentsType.staggeredMenuAnimation:
        return const Text("Staggered Menu Animation");
      case _ContentsType.typingIndicator:
        return const Text("Typing Indicator");
      case _ContentsType.expandableFAB:
        return const Text("Expandable FAB");
      case _ContentsType.gradientChatBubbles:
        return const Text("Gradient Chat Bubbles");
      case _ContentsType.dragAUIElement:
        return const Text("Drag A UI Element");
    }
  }

  Widget _buildDrawerItemIcon(_ContentsType type) {
    switch (type) {
      case _ContentsType.downloadButton:
        return const Icon(Icons.animation);
      case _ContentsType.nestedNavigationFlow:
        return const Icon(Icons.animation);
      case _ContentsType.photoFilterCarousel:
        return const Icon(Icons.animation);
      case _ContentsType.scrollingParallaxEffect:
        return const Icon(Icons.animation);
      case _ContentsType.shimmerLoadingEffect:
        return const Icon(Icons.animation);
      case _ContentsType.staggeredMenuAnimation:
        return const Icon(Icons.animation);
      case _ContentsType.typingIndicator:
        return const Icon(Icons.animation);
      case _ContentsType.expandableFAB:
        return const Icon(Icons.animation);
      case _ContentsType.gradientChatBubbles:
        return const Icon(Icons.animation);
      case _ContentsType.dragAUIElement:
        return const Icon(Icons.animation);
    }
  }

  Widget _buildContent(_ContentsType type) {
    switch (type) {
      case _ContentsType.downloadButton:
        return const DownLoadButtonExample();
      case _ContentsType.nestedNavigationFlow:
        return const NestedNavigationFlowExample();
      case _ContentsType.photoFilterCarousel:
        return const PhotoFilterCarouselExample();
      case _ContentsType.scrollingParallaxEffect:
        return const ScrollingParallaxEffectExample();
      case _ContentsType.shimmerLoadingEffect:
        return const ShimmerLoadingEffectExample();
      case _ContentsType.staggeredMenuAnimation:
        return const StaggeredMenuAnimationExample();
      case _ContentsType.typingIndicator:
        return const TypingIndicatorExample();
      case _ContentsType.expandableFAB:
        return const ExpandableFabExample();
      case _ContentsType.gradientChatBubbles:
        return const GradientChatBubblesExample();
      case _ContentsType.dragAUIElement:
        return const DragAUiElementExample();
    }
  }
}

enum _ContentsType {
  downloadButton,
  nestedNavigationFlow,
  photoFilterCarousel,
  scrollingParallaxEffect,
  shimmerLoadingEffect,
  staggeredMenuAnimation,
  typingIndicator,
  expandableFAB,
  gradientChatBubbles,
  dragAUIElement
}
