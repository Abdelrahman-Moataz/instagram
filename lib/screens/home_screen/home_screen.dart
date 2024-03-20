import 'package:instagram/constants/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(instagram,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.logout))
                  ],
                ),
                SizedBox(height: h *0.15,),
                ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                  return const PostWidget();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
