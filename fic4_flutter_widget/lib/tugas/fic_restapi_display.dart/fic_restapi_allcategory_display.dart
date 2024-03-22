import 'package:fic4_flutter_widget/crud_rest_api/network_manager.dart';
import 'package:fic4_flutter_widget/json_serialization/lesson/categori_model.dart';
import 'package:flutter/material.dart';

class FICAllCategoryDisplay extends StatefulWidget {
  const FICAllCategoryDisplay({super.key});

  @override
  State<FICAllCategoryDisplay> createState() => _FICAllCategoryDisplayState();
}

class _FICAllCategoryDisplayState extends State<FICAllCategoryDisplay> {
  late Future<List<CategoryModel>> categorymodellistAll;

  @override
  void initState() {
    super.initState();
    categorymodellistAll = NetworkManager().fetchAllCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Display All Cateigory"),
      ),
      body: FutureBuilder(
          future: categorymodellistAll,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.hasError}'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].name),
                      subtitle:
                          Text(snapshot.data![index].creationAt.toString()),
                      leading: Image.network(snapshot.data![index].image),
                    );
                  });
            } else {
              return const Center(
                child: Text('No Data'),
              );
            }
          }),
    );
  }
}
