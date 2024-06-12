import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class BottomBarController extends GetxController {
  final currentIndex = 2.obs;
  late List<BottomNavigationBarItem> navigationItems;
  late List<Widget> widgets;

  @override
  void onInit() {
    navigationItems = [
      BottomNavigationBarItem(icon: nonActiveIconWidget(Icons.search), activeIcon: activeIconWidget(Icons.search), label: ''),
      BottomNavigationBarItem(icon: nonActiveIconWidget(Icons.chat), activeIcon: activeIconWidget(Icons.chat), label: ''),
      BottomNavigationBarItem(icon: nonActiveIconWidget(Icons.home_filled), activeIcon: activeIconWidget(Icons.home_filled), label: ''),
      BottomNavigationBarItem(icon: nonActiveIconWidget(Icons.favorite), activeIcon: activeIconWidget(Icons.favorite), label: ''),
      BottomNavigationBarItem(icon: nonActiveIconWidget(Icons.person), activeIcon: activeIconWidget(Icons.person), label: ''),
    ];

    widgets = [
      SearchView(),
      MessagesView(),
      DashboardView(),
      FavoritesView(),
      ProfileView()
    ];
    super.onInit();
  }

  activeIconWidget(IconData icon){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(ValuesManager.vm22), color: ColorsManager.primaryColor),
      padding: const EdgeInsets.all(ValuesManager.vm10),
      child: Icon(icon, color: ColorsManager.whiteColor),
    );
  }

  nonActiveIconWidget(IconData icon){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(ValuesManager.vm16), color: ColorsManager.blackColor),
      padding: const EdgeInsets.all(ValuesManager.vm8),
      child: Icon(icon, color: ColorsManager.whiteColor),
    );
  }

  onItemTapped(int index) {
    currentIndex.value = index;
  }

}