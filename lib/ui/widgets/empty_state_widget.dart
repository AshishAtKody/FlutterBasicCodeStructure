import 'package:basic_code_structure/ui/widgets/show_up_transition.dart';
import 'package:basic_code_structure/utils/app_colors.dart';
import 'package:basic_code_structure/utils/extension/string_extension.dart';
import 'package:basic_code_structure/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class EmptyStateWidget extends StatelessWidget {
  final EmptyState emptyStateFor;

  const EmptyStateWidget({
    Key? key,
    required this.emptyStateFor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgName = "";
    String title = "";
    String subTitle = "";
    switch (emptyStateFor) {
      case EmptyState.NoData:
        imgName = "icNoDataFound";
        title = "Key_NoDataFound".localized;
        break;
      default:
        imgName = "icSomethingWrong";
        title = "Key_SomethingWentWrong".localized;
    }

    return Container(
      // color_assessment_running_test: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// title text
            ShowUpTransition(
              delay: 150,
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: TextStyles.fwMedium,
                      fontSize: 18.sp,
                      color: AppColors.textByTheme())),
            ),
            SizedBox(height: 70.h),

            /// image
            // ShowUpTransition(
            //   delay: 150,
            //   child: InkWell(
            //     onTap: (){
            //     },
            //     child: Image.asset(
            //         imgName
            //     ),
            //   ),
            // ),
            // /// sub title
            // ShowUpTransition(
            //   delay: 150,
            //   child: Text(
            //       title,
            //       textAlign: TextAlign.center,
            //       style: TextStyle(fontWeight: fwSemiBold, fontSize: 18.sp, color: clrTextByTheme())
            //   ),
            // ),
            // SizedBox(height: 15.h),
            // /// black line
            // SizedBox(height: 15.h,),
            // /// description
            // ShowUpTransition(
            //   delay: 150,
            //   child: Text(subTitle,
            //       textAlign: TextAlign.center,
            //       style: TextStyle(fontWeight: fwRegular, fontSize: 16.sp, color: grey5B5B5B)
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

enum EmptyState {
  SomethingWentWrong,
  NoData,
}
