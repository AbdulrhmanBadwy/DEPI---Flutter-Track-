import 'package:flutter/material.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/models/profile_model.dart';
import 'package:self_learn/responsive_and_adaptive_ui/my_profile_task/widgets/projects_widget.dart';

class MobileWidget extends StatelessWidget {
  final ProfileModel profileModel;
  const MobileWidget({super.key, required this.profileModel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with under text
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: width*.4,
                      height: width*.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/images/me1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(profileModel.name , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                Text(profileModel.job , style: TextStyle(fontSize: 15),),
              ],
            ),
          ),
          // Summary
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Summary' , style: TextStyle(fontSize: width*.06),),
                Text(profileModel.summary)
              ],
            ),
          ),
          // Last Projects
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Latest Projects' , style: TextStyle(fontSize: width*.06 , fontWeight: FontWeight.bold),),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: profileModel.lastProjects.length,
                    itemBuilder: (context, index) {
                      return ProjectsWidget(
                        projects: profileModel.lastProjects[index],
                      );
                    },
                  )
                ],
              )
          ),
          // Button
          Center(
            child: SizedBox(
              width: width*.9,
              child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                    overlayColor:Colors.black,
                  backgroundColor: Colors.red,
                  shadowColor : Colors.red,
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),

                child: Text('Download My CV ' , style: TextStyle(fontSize: width*.06),),

              ),
            ),
          )
        ],
      ),
    );
  }
}
