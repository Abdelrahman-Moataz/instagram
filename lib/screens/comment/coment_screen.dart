import 'package:flutter/cupertino.dart';
import 'package:instagram/constants/constants.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(comment,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index){
                  return ListTile(
                    title: const Text(name),
                    subtitle: const Text(comment),
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      NetworkImage("https://logodix.com/logo/4269.png"),
                    ),
                    trailing: IconButton(onPressed: (){},icon: const Icon(Icons.favorite),),
                  );
                },
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage("https://logodix.com/logo/4269.png"),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                            ),
                            hintText: addComment,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
