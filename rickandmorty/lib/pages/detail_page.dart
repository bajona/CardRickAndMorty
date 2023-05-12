import 'package:flutter/material.dart';
import 'package:rickandmorty/model/response_data.dart';
import 'package:dio/dio.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Future<ResponseData> _getCharacter(int id) async {
    final dio = Dio();

    final response = await dio.get(
      'https://rickandmortyapi.com/api/character/$id',
    );

    return ResponseData.fromJson(response.data);
  }

  @override
  Widget build(BuildContext context) {
    const baseTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.purple,
    );
    const baseTextStyle2 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: Colors.green,
    );
    return FutureBuilder(
      future: _getCharacter(196),
      builder: (context, snapshot) {
        return Scaffold(
          body: snapshot.hasData
              ? Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    // ignore: prefer_const_constructors
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipOval(
                              child: Image.network(snapshot.data!.image),
                            ),
                          ),
                          Text(
                            snapshot.data!.name,
                            style: baseTextStyle,
                          ),
                          Text(
                            snapshot.data!.status,
                            style: baseTextStyle2,
                          ),
                          Text(
                            snapshot.data!.gender,
                            style: baseTextStyle2,
                          ),
                          Text(
                            snapshot.data!.type,
                            style: baseTextStyle2,
                          ),
                          Text(
                            snapshot.data!.species,
                            style: baseTextStyle2,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
