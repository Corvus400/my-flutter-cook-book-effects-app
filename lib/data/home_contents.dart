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

class HomeContents {
  late Text title;
  late Icon icon;
  late Widget content;

  HomeContents(this.title, this.icon, this.content);

  static HomeContents fromContentsType(ContentsType type) {
    switch (type) {
      case ContentsType.downloadButton:
        return HomeContents(
            const Text("Download Button"),
            const Icon(Icons.animation),
            const DownLoadButtonExample()
        );
      case ContentsType.nestedNavigationFlow:
        return HomeContents(
            const Text("Nested Navigation Flow"),
            const Icon(Icons.animation),
            const NestedNavigationFlowExample()
        );
      case ContentsType.photoFilterCarousel:
        return HomeContents(
            const Text("Photo Filter Carousel"),
            const Icon(Icons.animation),
            const PhotoFilterCarouselExample()
        );
      case ContentsType.scrollingParallaxEffect:
        return HomeContents(
            const Text("Scrolling Parallax Effect"),
            const Icon(Icons.animation),
            const ScrollingParallaxEffectExample()
        );
      case ContentsType.shimmerLoadingEffect:
        return HomeContents(
            const Text("Shimmer Loading Effect"),
            const Icon(Icons.animation),
            const ShimmerLoadingEffectExample()
        );
      case ContentsType.staggeredMenuAnimation:
        return HomeContents(
            const Text("Staggered Menu Animation"),
            const Icon(Icons.animation),
            const StaggeredMenuAnimationExample()
        );
      case ContentsType.typingIndicator:
        return HomeContents(
            const Text("Typing Indicator"),
            const Icon(Icons.animation),
            const TypingIndicatorExample()
        );
      case ContentsType.expandableFAB:
        return HomeContents(
            const Text("Expandable FAB"),
            const Icon(Icons.animation),
            const ExpandableFabExample()
        );
      case ContentsType.gradientChatBubbles:
        return HomeContents(
            const Text("Gradient Chat Bubbles"),
            const Icon(Icons.animation),
            const GradientChatBubblesExample()
        );
      case ContentsType.dragAUIElement:
        return HomeContents(
            const Text("Drag A UI Element"),
            const Icon(Icons.animation),
            const DragAUiElementExample()
        );
    }
  }
}

enum ContentsType {
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
