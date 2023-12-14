import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListScreenState();
  }
}

class _ListScreenState extends State<ListScreen>
    with _PaginationScrollableMixin<ListScreen>
    implements PaginationScrollable {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemBuilder: (context, index) {
        // render list item
        return Container();
      },
    );
  }

  @override
  void loadMore() {
    // api call
  }
}

abstract interface class PaginationScrollable {
  void loadMore();
}

mixin _PaginationScrollableMixin<T extends StatefulWidget> on State<T> implements PaginationScrollable {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset ==
          scrollController.position.maxScrollExtent) {
        // Scroll可能なWidgetが最下部に到達した
        loadMore();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
