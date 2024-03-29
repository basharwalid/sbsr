import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sbsr/Core/Base/BaseNavigator.dart';
import 'package:sbsr/Core/Base/BaseViewModel.dart';
import 'package:sbsr/Core/Providers/ThemeProvider.dart';

abstract class BaseState<T extends StatefulWidget , VM extends BaseViewModel> extends State<T> implements BaseNavigator{


 VM? viewModel;
 VM initViewModel();
  @override
  void initState() {
    super.initState();
    viewModel = initViewModel();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    viewModel!.themeProvider = Provider.of<ThemeProvider>(context);
    return const SizedBox();
  }
  goBack(){
      Navigator.pop(context);
  }


}