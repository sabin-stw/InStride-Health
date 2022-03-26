import 'package:flutter/material.dart';

import '../../core/constant.dart';
import 'login.dart';
import 'registration.dart';

class IdentityPage extends StatefulWidget {
  const IdentityPage({Key? key}) : super(key: key);

  @override
  _IdentityPageState createState() => _IdentityPageState();
}

class _IdentityPageState extends State<IdentityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                toolbarHeight: 200.0,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Theme.of(context).primaryColor,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 48.0),
                          child: Image(
                            image: AssetImage(AppAssetsImages.logoWithName),
                          ),
                        ),
                        Image(
                          image: AssetImage(AppAssetsImages.logoWithName),
                        )
                      ],
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.zero,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF21409A),
                      ),
                      child: const TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor:
                            Color.fromARGB(255, 198, 219, 200),
                        tabs: [
                          Tab(
                            // icon: Icon(Icons.login_outlined),
                            text: "LOGIN",
                          ),
                          Tab(
                            // icon: Icon(Icons.app_registration_outlined),
                            text: "SIGNUP",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: const Padding(
            padding: EdgeInsets.all(32.0),
            child: TabBarView(
              children: [
                LoginWidget(),
                RegisterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:dio_log/overlay_draggable_button.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import '../../core/constant.dart';
// import '../widgets/login.dart';
// import '../widgets/registration.dart';

// class IdentityPage extends StatefulWidget {
//   const IdentityPage({Key? key}) : super(key: key);

//   @override
//   _IdentityPageState createState() => _IdentityPageState();
// }

// class _IdentityPageState extends State<IdentityPage> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     if (kDebugMode) {
//       // display overlay button of HTTP log
//       showDebugBtn(context);
//     }
//     return Scaffold(
//       body: DefaultTabController(
//         length: 2,
//         child: NestedScrollView(
//           headerSliverBuilder: (context, value) {
//             return [
//               SliverAppBar(
//                 expandedHeight: 200.0,
//                 backgroundColor: Colors.transparent,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: Container(
//                     // color: Theme.of(context).primaryColor,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [
//                             Theme.of(context).colorScheme.primary,
//                             Theme.of(context).colorScheme.primaryVariant,
//                           ],
//                           begin: const FractionalOffset(0.0, 0.0),
//                           end: const FractionalOffset(1.0, 0.0),
//                           stops: const [0.0, 1.0],
//                           tileMode: TileMode.clamp),
//                     ),

//                     margin: const EdgeInsets.only(bottom: 20.0),
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: const [
//                         Padding(
//                           padding: EdgeInsets.only(top: 48.0),
//                           child: Image(
//                             image: AssetImage(AppAssetsImages.backgroundArt),
//                           ),
//                         ),
//                         Image(
//                           image: AssetImage(AppAssetsImages.whiteLogoWithName),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 bottom: PreferredSize(
//                   preferredSize: Size.zero,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 10,
//                             offset: const Offset(0, 5),
//                           ),
//                         ],
//                       ),
//                       child: TabBar(
//                         onTap: (i) => setState(() => index = i),
//                         tabs: [
//                           Tab(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: const Align(
//                                 alignment: Alignment.center,
//                                 child: Text('Login'),
//                               ),
//                             ),
//                           ),
//                           Tab(
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                               child: const Align(
//                                 alignment: Alignment.center,
//                                 child: Text('Sign Up'),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: const Padding(
//             padding: EdgeInsets.all(32.0),
//             child: TabBarView(
//               children: [
//                 LoginWidget(),
//                 RegisterWidget(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
