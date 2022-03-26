import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final _passwordController = TextEditingController();
  // final requestDto = RegisterRequest()..gender = 'Male';
  final _formKey = GlobalKey<FormState>();

  bool _showPassword = false;
  // late Flush _flush;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(Icons.person_outlined),
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              // onSaved: (val) => requestDto.name = val,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Name is required.';
                }
                return null;
              },
            ),

            // Row(
            //   children: [
            //     InkWell(
            //       child: Row(
            //         children: [
            //           Radio<String>(
            //             value: 'Male',
            //             // groupValue: requestDto.gender,
            //             onChanged: (val) =>
            //                 setState(() => requestDto.gender = val),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.all(8.0).copyWith(right: 30),
            //             child: const Text('Male'),
            //           )
            //         ],
            //       ),
            //       onTap: () => setState(() => requestDto.gender = 'Male'),
            //     ),
            //     InkWell(
            //       child: Row(
            //         children: [
            //           Radio<String>(
            //             value: 'Female',
            //             groupValue: requestDto.gender,
            //             onChanged: (val) =>
            //                 setState(() => requestDto.gender = val),
            //           ),
            //           const Padding(
            //             padding: EdgeInsets.all(8.0),
            //             child: Text('Female'),
            //           )
            //         ],
            //       ),
            //       onTap: () => setState(() => requestDto.gender = 'Female'),
            //     ),
            //   ],
            // ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Address'),
                prefixIcon: Icon(Icons.location_city_outlined),
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              // onSaved: (val) => requestDto.address = val,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Address is required.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Mobile'),
                prefixIcon: Icon(Icons.phone_outlined),
              ),
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              // onSaved: (val) => requestDto.contact = val,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Mobile number is required.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.mail_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              // onSaved: (val) => requestDto.email = val,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Email ID is required.';
                }
                return null;
              },
            ),
            TextFormField(
              autocorrect: false,
              controller: _passwordController,
              decoration: InputDecoration(
                label: const Text('Password'),
                prefixIcon: const Icon(Icons.lock_outlined),
                suffixIcon: InkWell(
                  child: Icon(_showPassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined),
                  onTap: () => setState(() => _showPassword = !_showPassword),
                ),
              ),
              enableSuggestions: false,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !_showPassword,
              textInputAction: TextInputAction.next,
              // onSaved: (val) => requestDto.passwd = val,
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
                  _register(context);
                  // } else {
                  //   _flush.error(
                  //       "No Internet Connection\n Try Connecting to the Network");
                  // }
                },
                child: const Text(
                  'REGISTER',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Already have an account? ",
            //       textAlign: TextAlign.center,
            //       style: Theme.of(context).textTheme.caption,
            //     ),
            //     TextButton(onPressed: () {}, child: const Text("Login here"))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  _register(BuildContext context) async {
    // // show loader
    // Helper.showLoader(context);

    // final client = IdentityClient(ServiceHelper.getDio());
    // final response = await client.regsiter(requestDto);

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
    //             children: [
    //               if (!response.flag)
    //                 const Padding(
    //                   padding: EdgeInsets.only(bottom: 8.0),
    //                   child: Text('Unable to Register'),
    //                 ),
    //               Text(response.message)
    //             ],
    //           ),
    //           title: const Center(child: Text('AlineTrip')),
    //         );
    //       });
    // }

    // if (response.flag) {
    //   _formKey.currentState?.reset();
    //   FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    //   analytics.logSignUp(signUpMethod: 'AlineTrip email');
    // }
  }

  // Future<bool> getInternetUsingInternetConnectivity() async {
  //   bool result = await InternetConnectionChecker().hasConnection;
  //   return result;
  // }
}
