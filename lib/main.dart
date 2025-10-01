import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'di/injection_container.dart' as di;
import 'view/pages/pokedex_page.dart';
import 'controller/pokedex_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.sl<PokedexController>(),
        ),
      ],
      child: MaterialApp(
        title: 'Pokédex',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: PokedexPage(),
      ),
    ),
  );
}