import 'package:clothes_shop_app/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../account/presentation/screens/account_screen.dart';
import '../../../cart/presentation/screens/cart_screen.dart';
import '../../../favorite/presentation/screens/wishlist_screen.dart';
import '../../controller/tabs_controller.dart';
import '../widgets/tab_bar_widget.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  Future<void> _onTabSelected(int index) async {
    ref.read(tabsControllerProvider.notifier).set(index);
  }

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   if (!mounted) return;

    //   await Future.wait([
    //     ref
    //         .read(animeListDataProvider(AnimeListType.watching).notifier)
    //         .refresh(),
    //     ref
    //         .read(animeListDataProvider(AnimeListType.upcoming).notifier)
    //         .refresh(),
    //   ]);
    // });
  }

  @override
  Widget build(BuildContext context) {
    final int currentIndex = ref.watch(tabsControllerProvider);

    const double bottomBarHeight = 70;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: bottomBarHeight),
              child: IndexedStack(
                index: currentIndex,
                children: const [
                  HomeScreen(),
                  WishlistScreen(),
                  CartScreen(),
                  AccountScreen(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
                child: CustomBottomNavBar(
                  currentIndex: currentIndex,
                  onTap: _onTabSelected,
                  items: const [
                    Icons.home,
                    Icons.favorite,
                    Icons.shopping_basket_rounded,
                    Icons.propane,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
