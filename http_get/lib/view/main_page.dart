import 'package:flutter/material.dart';
import 'package:http_get/model/posts.dart';
import 'package:http_get/service/remote_services.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //for list of posts
  List<Post>? posts;
  //check for loading (flag variable)
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  //function to get posts
  getData() async {
    posts = await RemoteServices().getPosts();
    if (posts != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Http Get request"),
        ),
        body: Visibility(
          visible: isLoading,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
              itemCount: posts?.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[300]),
                          child: const Placeholder(
                            color: Colors.red,
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              posts![index].title,
                              maxLines: 2,
                              style: const TextStyle(fontSize: 34),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // child: Text(posts![index].title),
                );
              }),
        ));
  }
}
