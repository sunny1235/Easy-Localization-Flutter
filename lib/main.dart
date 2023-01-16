import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_exp/translations/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import './translations/local_keys.g.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assets/transalations',
    supportedLocales: const [Locale("en"), Locale("hi")],
    fallbackLocale:const Locale("en"),
    assetLoader: const CodegenLoader(),
    child: const MyApp(),),);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.app_bar.tr()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
           Text(LocaleKeys.center_text.tr()),
         const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.setLocale(const Locale("hi"));
              }, child: const Text("Hindi")),
              const SizedBox(width: 50,),
              ElevatedButton(onPressed: (){
                context.setLocale(const Locale("en"));
              }, child: const Text("English")),
            ],
          )
        ],
      ),
    );
  }
}