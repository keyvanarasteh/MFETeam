import 'package:flutter/material.dart';

class MenuTile1 extends StatefulWidget {

  final Icon? icon;
  final String title;
  final bool expanded;
  final List<Widget> children;
  final Function()? onTap;
  
  const MenuTile1({
    Key? key, this.icon, required this.title, this.expanded = false, this.children = const [], this.onTap,
  }) : super(key: key);

  @override
  State<MenuTile1> createState() => _MenuTile1State();
}

class _MenuTile1State extends State<MenuTile1> {

  bool expanded = false;

  @override
  Widget build(BuildContext context) {

    // expanded = false;

    return Column(
      children: [
        InkWell(
          onTap: () {
            if(widget.children.isNotEmpty) {
              setState(() {
                expanded = !expanded;
              });
            }
            else if(widget.onTap != null) {
              widget.onTap!();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    widget.icon != null ? widget.icon! : SizedBox(width: 18,),
                    SizedBox(width: 8,),
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                widget.children.length > 0 ? 
                  expanded
                    ? 
                      Icon(Icons.keyboard_arrow_up_outlined)
                      : 
                        Icon(Icons.keyboard_arrow_down_outlined) 
                          : SizedBox(),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:   expanded ? 
            Column(children: widget.children)
              : SizedBox(),
        )
        
      ],
    );
  }
}