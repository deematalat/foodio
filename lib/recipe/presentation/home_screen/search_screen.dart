
import 'package:flutter/material.dart';
import 'package:foodio/core/app_export.dart';
import 'package:foodio/recipe/presentation/home_screen/widgets/listmaskgroup_item_widget.dart';

import '../../domain/entities/recipe.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  late  List <Recipe> listRecipeItem;
  late List<Recipe> searchList;
  bool _isSearching=false;
  final _searchTextController = TextEditingController();
 void AddSearchForItemsToSearchList(String searchItem){
   searchList = listRecipeItem
       .where((recipe) =>
       recipe.name.startsWith(searchItem))
       .toList();
   setState(() {});
 }

  List<Widget> _buildAppBarActions() {
    if (_isSearching) {
      return [
        IconButton(
          onPressed: () {
            _clearSearch();
            Navigator.pop(context);
          },
          icon: Icon(Icons.clear, color:ColorConstant.gray50),
        ),
      ];
    } else {
      return [
        IconButton(
          onPressed: _startSearch,
          icon: Icon(
            Icons.search,
            color:ColorConstant.gray50,
          ),
        ),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchTextController.clear();
    });
  }


  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final  value = arguments['value'] as String;
    final listRecipeItem=arguments['recipes'] as List<Recipe>;
    return   Scaffold(
      appBar: AppBar(
        actions:_buildAppBarActions(),
        backgroundColor: ColorConstant.deepOrange400,
        title:  TextField(
          controller: _searchTextController,
          cursorColor:Colors.white,
          decoration: InputDecoration(
            suffix:IconButton(
              onPressed: () {},
              icon:Icon(Icons.close) ,
            ),
            hintText: 'Search...',
          ),
          onChanged: (searchItem) {
            AddSearchForItemsToSearchList(searchItem);
          },
        ),
      ),
      body:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing:0.5,
          mainAxisSpacing:0.5,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: _searchTextController.text.isEmpty
            ? listRecipeItem.length-1
            : searchList.length,
        itemBuilder: (ctx, index) {
          return ListRecipeItemWidget(
            recipes: _searchTextController.text.isEmpty
                ? listRecipeItem
                :searchList,
            index:index+1,
          );
        },
      )
    );
  }
}
