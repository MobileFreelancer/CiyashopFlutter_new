import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SidebarNavigationDrawer extends StatelessWidget {
  const SidebarNavigationDrawer({super.key, required this.drawerKey});

  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.backgroundColor,
      clipBehavior: Clip.hardEdge,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(Assets.imagesAppBarLogo, height: 30),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      drawerKey.currentState?.closeDrawer();
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: ColorConstant.textBody,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            mainDivider(),
            Flexible(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 0),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.all(0),
                      leading: Image.asset(
                        Assets.imagesTestproduct,
                        height: 70,
                        width: 70,
                      ),
                      title: TextTitleMedium(
                        text: "Smart Watch",
                        color: ColorConstant.primaryColor,
                      ),
                    ),
                    separatorBuilder: (context, index) => mainDivider(),
                    itemCount: 5,
                  ),
                  mainDivider(),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesNotification,
                    name: "Notification",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesCart2,
                    name: "My Cart",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesCoupons,
                    name: "My Coupons",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesHeart,
                    name: "Wishlist",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesUser,
                    name: "My Account",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesBug,
                    name: "My Orders",
                  ),
                  mainDivider(indent: 20),
                  const SideBarFixedItemsWidget(
                    icon: Assets.imagesLogout,
                    name: "Logout",
                  ),
                  const Gap(30)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SideBarFixedItemsWidget extends StatelessWidget {
  const SideBarFixedItemsWidget({super.key, required this.name, required this.icon});

  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(
              icon,
            ),
            color: Colors.red,
            size: 20,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextBodyMedium(
              text: name,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
