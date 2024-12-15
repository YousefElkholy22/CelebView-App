// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:nike_store/core/helpers/spacing.dart';
// import 'package:nike_store/core/theming/app_text_styles.dart';
// import 'package:nike_store/features/onboarding/data/models/onboarding_info.dart';

// class OnboardingContent extends StatelessWidget {
//   const OnboardingContent({
//     super.key,
//     required this.item,
//     required this.pageIndex,    
//   });

//   final OnboardingInfo item;
//   final int pageIndex;    

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (pageIndex == 0) ...[
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: SvgPicture.asset('assets/svgs/Misc_04.svg')),
              
//             ],
//             if (pageIndex == 1) ...[
//               Align(
//                 alignment: Alignment.bottomRight,
//                 child: SvgPicture.asset('assets/svgs/Misc_04.svg')),
              
//             ],
//              if (pageIndex == 2) ...[
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: SvgPicture.asset('assets/svgs/Misc_04.svg')),
              
//             ],
//             if (pageIndex == 0) ...[
//               Align(
//                 alignment: Alignment.topRight,
//                 child: SvgPicture.asset('assets/svgs/Highlight_10.svg')),
//             ],
//             if (pageIndex == 1) ...[
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: SvgPicture.asset('assets/svgs/Highlight_10.svg',height: 40.sp,width: 40.sp,)),
//             ],
//             if (pageIndex == 1) ...[
//           Image.asset(
//             item.image,
//             height: 300.sp, 
//             width: 300.sp,
//           ),
//         ] else ...[
//           Image.asset(item.image),
//         ],
//             if (pageIndex == 1) ...[
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: SvgPicture.asset('assets/svgs/Ellipse 3.svg',)),
//             ],
            

            
//             verticalSpace(20),
//             Text(
//               item.title,
//               style: AppTextStyles.font30WhiteExtraBold,
//               textAlign: TextAlign.center,
//             ),
//              if (pageIndex == 0) ...[
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: Center(child: SvgPicture.asset('assets/svgs/Vector.svg'))),
             
//             ],
            
//             verticalSpace(16),
//             Text(
//               item.subtitle,
//               textAlign: TextAlign.center,
//               style: AppTextStyles.font16WhiteRegular,
//             ),
//              if (pageIndex == 2) ...[
//               Align(
//                 alignment: Alignment.topRight,
//                 child: SvgPicture.asset('assets/svgs/Highlight_10.svg')),
//             ],
//              if (pageIndex == 0) ...[
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: SvgPicture.asset('assets/svgs/vectorr.svg')),
             
//             ],
            
//           ],
//         ),
//       ],
//     );
//   }
// }
