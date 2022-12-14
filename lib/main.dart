import 'package:basic_code_structure/generated/assets.dart';
import 'package:basic_code_structure/ui/widgets/common_form_field.dart';
import 'package:basic_code_structure/ui/widgets/round_button.dart';
import 'package:basic_code_structure/utils/form_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _mobileController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonInputFormField(
                  textEditingController: _mobileController,
                  validator: validateMobile,
                  placeholderImage: Assets.imagesIcApple,
                  placeholderText: 'Mobile Number',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonInputFormField(
                  textEditingController: _passwordController,
                  validator: validateMobile,
                  placeholderImage: Assets.imagesIcApple,
                  placeholderText: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundButton(
                  onTap: () {
                    var result = _formKey.currentState?.validate();
                    print("result: $result");
                  },
                  buttonText: "Login",
                ),
              )
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )));
  }
}
