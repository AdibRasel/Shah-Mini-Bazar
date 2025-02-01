import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  // ei khaner sob kichu daynamic
  String? title,
  List<Widget> ? action,
  Widget? isLeading,
  required BuildContext context,
  Color? backgroundColor,
  }){
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: isLeading ?? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      title: title != null ? Text(title) : null,
      actions:action,
    );
}