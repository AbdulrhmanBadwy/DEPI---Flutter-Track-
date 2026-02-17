import 'package:flutter/material.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/widgets/mobile_widget.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/widgets/tablet_widget.dart';

import 'my_profile_task/models/profile_model.dart';

class ResponsiveImplement extends StatelessWidget {
  const ResponsiveImplement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth>600){
          return TabletWidget(profileModel: profileModel,);
        }else {
          return MobileWidget(profileModel: profileModel);
        }
      }),
    );
  }
}
