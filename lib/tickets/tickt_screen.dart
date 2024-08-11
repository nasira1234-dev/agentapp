import 'package:flutter/material.dart';
import 'package:myapp/utils/constant.dart';

class TicktScreen extends StatefulWidget {
  const TicktScreen({super.key});

  @override
  State<TicktScreen> createState() => _TicktScreenState();
}

class _TicktScreenState extends State<TicktScreen> {
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
          children: [
            Center(
              child: raisedTickets(),
            ),
            
          ],
        ),
      ),
    );
  }

  Container raisedTickets() {
    return Container(
      width: 350,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffFBFBFB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(4, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '#14801 - Alternate Asset Deployment',
            style: TextStyle(
                color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          const Text(
            'Deploy the alternate asset TN0989384 to the Rider H,Emp Id - 373, Mobile No - 6302361933 map to the hub..',
            style: TextStyle(
                color: kBlack, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff84DCDC),
                ),
                child: const Center(
                    child: Text(
                  'H',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'By',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Bob',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEA94A9),
                ),
                child: const Center(
                    child: Text(
                  'H',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'To',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'James',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                Icons.timelapse,
                color: Color(0xff61AFDC),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '23 May, 2024,3:22pm',
                    style: TextStyle(
                        color: kGreyColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
