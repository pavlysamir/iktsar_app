import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/generated/l10n.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              child: Row(
            children: [
              Icon(
                Icons.person,
                color: kPrimaryKey,
              ),
              SizedBox(width: 10),
              Text('User Name'),
            ],
          )),
          ListTile(
            onTap: () {
              customGoAndDeleteNavigate(
                  context: context, path: AppRouter.kHomeScreen);
            },
            leading: const Icon(Icons.home),
            title: Text(S.of(context).home),
          ),
          ListTile(
            onTap: () {
              customGoAndDeleteNavigate(
                  context: context, path: AppRouter.kServicesScreen);
            },
            leading: const Icon(Icons.settings),
            title: Text(S.of(context).Services),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.logout),
            title: Text(S.of(context).Activity),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: Text(S.of(context).Profile),
          ),
          const Spacer(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(S.of(context).Settings),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(S.of(context).Logout),
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
