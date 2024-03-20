import 'package:instagram/constants/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.05),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage("https://logodix.com/logo/4269.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        posts,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        followers,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        following,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                  ),
                  onPressed: () {},
                  child: const Text(edite),
                ),
              ),
              const SizedBox(height: 10,),
              const Divider(thickness: 3,),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 5 / 3,
                children: List.generate(5, (index) {
                  return Image.network(
                    "https://logodix.com/logo/4269.png",
                    width: double.infinity,
                    height: 0.5 * h,
                    fit: BoxFit.fill,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
