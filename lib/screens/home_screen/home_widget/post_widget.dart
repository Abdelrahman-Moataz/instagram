import 'package:instagram/constants/constants.dart';
import 'package:instagram/screens/comment/coment_screen.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage("https://logodix.com/logo/4269.png"),
                ),
                SizedBox(
                  width: w * 0.05,
                ),
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            "https://logodix.com/logo/4269.png",
            width: double.infinity,
            height: 0.5 * h,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
              ),
              const Text(
                "208 Likes",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Nice Photo",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CommentScreen()));
            },
            child: const Text("Add comment",style: TextStyle(color: Colors.grey),),
          ),
          const Text(
            "1 Hour ago",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
