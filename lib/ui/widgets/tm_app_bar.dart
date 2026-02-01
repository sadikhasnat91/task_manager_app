import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/utils/assets_path.dart';

class TmAppBar extends StatefulWidget implements PreferredSizeWidget{
  const TmAppBar({super.key});

  @override
  State<TmAppBar> createState() => _TmAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}

class _TmAppBarState extends State<TmAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(radius: 16,
            backgroundImage: AssetImage(AssetsPath.logo),
            onBackgroundImageError: (_, _) => const Icon(Icons.person_outline),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('Welcome Back', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                Text('Username', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),

              ],
            ),
          ),
          IconButton(onPressed: () {

          },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
