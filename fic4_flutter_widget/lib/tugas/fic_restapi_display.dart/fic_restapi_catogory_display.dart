import 'package:fic4_flutter_widget/crud_rest_api/network_manager.dart';
import 'package:fic4_flutter_widget/json_serialization/lesson/categori_model.dart';
import 'package:flutter/material.dart';

class FICRestAPIDisplay extends StatefulWidget {
  const FICRestAPIDisplay({super.key});

  @override
  State<FICRestAPIDisplay> createState() => _FICRestAPIDisplayState();
}

class _FICRestAPIDisplayState extends State<FICRestAPIDisplay> {
  late Future<CategoryModel> categorymodel;

  @override
  void initState() {
    super.initState();
    categorymodel = NetworkManager().fetchCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FIC Jago Flutter - Tampilan Data dari API'),
        ),
        body: FutureBuilder<CategoryModel>(
            future: categorymodel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    children: [
                      Text(snapshot.data!.name),
                      Image.network(snapshot.data!.image),
                      Text(snapshot.data!.creationAt.toString())
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }));
  }
}
