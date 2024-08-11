import 'package:flutter/material.dart';
import 'package:myapp/booking/vechcileI_images_screen.dart';
import 'package:myapp/utils/constant.dart';

class AssignVechileScreen extends StatefulWidget {
  const AssignVechileScreen({super.key});

  @override
  State<AssignVechileScreen> createState() => _AssignVechileScreenState();
}

class _AssignVechileScreenState extends State<AssignVechileScreen> {
  Item _selectedItem = Item.Battery;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ala Manas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Booking ID', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Vehicle', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Vehicle Number', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Starting Km', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                  ],
                ),
                Column(
                  children: [
                    Text(':', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(':', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(':', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(':', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('#34562', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('B Gauss12', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('KT23456', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('346', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text('Assets :', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      RadioListTile<Item>(
                        title: const Text('Battery'),
                        value: Item.Battery,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                      RadioListTile<Item>(
                        title: const Text('Charger'),
                        value: Item.Charger,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                      RadioListTile<Item>(
                        title: const Text('Floor Mat'),
                        value: Item.FloorMat,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      RadioListTile<Item>(
                        title: const Text('Tool Kit'),
                        value: Item.ToolKit,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                      RadioListTile<Item>(
                        title: const Text('Right Mirror'),
                        value: Item.RightMirror,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                      RadioListTile<Item>(
                        title: const Text('Left Mirror'),
                        value: Item.LeftMirror,
                        groupValue: _selectedItem,
                        onChanged: (Item? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
                height: 35,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const VechcileiImagesScreen()));
                  },
                  child: Container(
                    width: 220,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Continue',
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
    );
  }
}

enum Item { Battery, Charger, FloorMat, ToolKit, RightMirror, LeftMirror }
