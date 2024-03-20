import 'package:instagram/constants/constants.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body:   SingleChildScrollView(

          child: Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.cancel,size: 26,),),
                    const Text(newPost,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){}, child: const Text(next,style: TextStyle(fontSize: 22),),),
                  ],
                ),
                SizedBox(height: h * 0.4,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.upload,size: 28,),),
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: "add comment",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
