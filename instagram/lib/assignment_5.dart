  import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool _isPost1Liked = false;
  final bool _isPost2Liked = false;
  final bool _isPost3Liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1Liked = !_isPost1Liked;
                      });
                    },
                    icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1Liked = !_isPost1Liked;
                      });
                    },
                    icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1Liked = !_isPost1Liked;
                      });
                    },
                    icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                  width: double.infinity,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1Liked = !_isPost1Liked;
                      });
                    },
                    icon: Icon(
                        _isPost1Liked
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined,
                        color: _isPost1Liked ? Colors.red : Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),

      /*body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Image.network(
                    "https://www.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),*/
    );
  }
}
