import 'package:flutter/material.dart';

import '../../routes.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  // final requestDto = LoginRequest();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  // late Flush _flush;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Username'),
                prefixIcon: Icon(Icons.mail_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
              // onSaved: (val) => requestDto.username = val,
              textInputAction: TextInputAction.next,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Email is required.';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              autocorrect: false,
              decoration: InputDecoration(
                label: const Text('Password'),
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: InkWell(
                  child: Icon(_showPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined),
                  onTap: () => setState(() => _showPassword = !_showPassword),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
              enableSuggestions: false,
              obscureText: !_showPassword,
              // onSaved: (val) => requestDto.password = val,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Password is required.';
                }
                return null;
              },
            ),

            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 50, //height of button

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF21409A),
                ),
                onPressed: () async {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  _formKey.currentState!.save();
                  // _flush = Flush(context);
                  // if (await getInternetUsingInternetConnectivity()) {
                  _login();
                  // } else {
                  //   _flush.error(
                  //       "No Internet Connection\n Try Connecting to the Network");
                  // }
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Don't have an account? ",
            //       textAlign: TextAlign.center,
            //       style: Theme.of(context).textTheme.caption,
            //     ),
            //     TextButton(onPressed: () {

            //     }, child: Text("Signup here"))
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  _login() async {
    // // show loader
    // Helper.showLoader(context);
    // print(requestDto.toJson());
    // // return;

    // final client = IdentityClient(ServiceHelper.getDio());
    // final response = await client.login(requestDto);

    // // hide loader
    // Helper.hideLoader(context);

    // if (response.message.isNotEmpty) {
    //   await showDialog<void>(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           actions: [
    //             TextButton(
    //               onPressed: () => Navigator.pop(context),
    //               child: const Text('OK'),
    //             )
    //           ],
    //           actionsAlignment: MainAxisAlignment.center,
    //           content: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [Text(response.message)],
    //           ),
    //           title: const Center(child: Text('AlineTrip')),
    //         );
    //       });
    // }

    // if (!response.flag) {
    //   return;
    // }

    // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    // analytics.logLogin();
    // analytics.setUserId(id: response.data!.id.toString());
    // analytics.setUserProperty(name: 'name', value: response.data!.name);

    Navigator.of(context).restorablePushNamedAndRemoveUntil(
        AppRoutes.dashboard, (route) => false);
  }

  // Future<bool> getInternetUsingInternetConnectivity() async {
  //   bool result = await InternetConnectionChecker().hasConnection;
  //   return result;
  // }
}
