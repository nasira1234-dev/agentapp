import 'package:flutter/material.dart';
import 'package:myapp/home/home_screen.dart';
import 'package:myapp/utils/constant.dart';

class VechcileiImagesScreen extends StatefulWidget {
  const VechcileiImagesScreen({super.key});

  @override
  State<VechcileiImagesScreen> createState() => _VechcileiImagesScreenState();
}

class _VechcileiImagesScreenState extends State<VechcileiImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kprimary,
            ),
            child: const Icon(
              Icons.menu,
              size: 25,
              color: kWhite,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Assign Vehicle',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              addImages(),
              SizedBox(
                height: 20,
              ),
              addImages(),
              SizedBox(
                height: 20,
              ),
              addImages(),
              SizedBox(
                height: 20,
              ),
              addImages(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const HomeScreen()));
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Allot',
                        style: TextStyle(
                            color: kWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container addImages() {
    return Container(
      width: 400,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: kprimary,
          )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 8, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Vehicle  Images*',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  width: 88,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    'Add Image',
                    style: TextStyle(
                      color: kWhite,
                    ),
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xff000000).withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'No Image Found',
                style: TextStyle(
                  color: kWhite,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
