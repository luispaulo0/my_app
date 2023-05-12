import 'package:flutter/material.dart';
import 'package:my_app/features/posts/data/repositories/post_firebase_new_user.dart';
import 'package:my_app/features/posts/presentation/pages/home_Entry.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/features/posts/presentation/provider/signup_form_model.dart';
import 'package:provider/provider.dart';
import 'features/posts/data/datasource/firebase_service.dart';
import 'features/posts/domain/repositories/post_new_user.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseServiceSource>(
          create: (_) => FirebaseService(),
        ),
        ProxyProvider<FirebaseServiceSource, PostNewUser>(
          update: (_, firebaseService, __) => PostFirebaseNewUser(
            firebaseServiceSource: firebaseService,
          ),
        ),
        ChangeNotifierProvider<SignupFormModel>(
          create: (_) => SignupFormModel(
            postNewUser:
                PostFirebaseNewUser(firebaseServiceSource: FirebaseService()),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: homeEntry(),
      ),
    );
  }
}
