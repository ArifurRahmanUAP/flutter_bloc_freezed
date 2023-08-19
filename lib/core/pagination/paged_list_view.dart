import 'package:flutter/material.dart';

typedef PagedWidgetBuilder<T> = Widget Function(
    BuildContext context, T item, int index);

class PagedListView<T> extends StatelessWidget {
  final PagedWidgetBuilder<T> itemBuilder;
  final List<T> items;
  final bool isLoading;
  final _scrollController = ScrollController();
  final Function(List<T>, int) onNewLoad;
  final int totalPage;
  final int totalSize;
  final int itemPerPage;
  final int currentPage;
  final Axis scrollDiraction;

  PagedListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.isLoading,
    required this.onNewLoad,
    required this.totalPage,
    required this.totalSize,
    required this.itemPerPage,
    required this.currentPage,
    required this.scrollDiraction,
  });

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      // if loader is visible then previous execution is not completed
      // or duplicate execution is about to happen
      // so we stop it by return
      // also if total page is 1 or total size is less equal item per page
      // so we don't need to call newLoad any more
      if (isLoading || totalPage == 1) return;

      if (_scrollController.position.atEdge &&
          _scrollController.position.pixels > 0) {
        // this condition will be execute when you are in bottom of the list
        // then callback function will be trigger which we pass through parameter
        // will be execute for loading more data

        int nextPage = currentPage + 1;
        this.onNewLoad(items, nextPage);
      }
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (items.isNotEmpty)
          Flexible(
            flex: 1,
            child: ListView.builder(
              scrollDirection: scrollDiraction,
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _scrollController,
              itemCount: items.isEmpty ? 0 : items.length,
              itemBuilder: (context, index) {
                return itemBuilder(context, items[index], index);
              },
            ),
          )
        else
          const Flexible(
            child: Text("Not Found"),
          ),
        isLoading
            ? const Column(
                children: [
                  CircularProgressIndicator(),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
