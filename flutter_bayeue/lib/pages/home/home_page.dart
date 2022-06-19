import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/id/870/200/300?grayscale&blur=2'),
                        ),
                        Text(
                          '  Hallo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                        Text(
                          ' Udin!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        UniconsLine.bell,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset('assets/images/home.png'),
                  Positioned(
                    top: 20,
                    right: 30,
                    child: Image.asset('assets/images/dihome.png'),
                  ),
                  const Positioned(
                    top: 30,
                    left: 30,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    left: 30,
                    child: Text(
                      '0899 3453 4534',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    top: 90,
                    left: 30,
                    child: Text(
                      'Current Balance',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const Positioned(
                    top: 120,
                    left: 30,
                    child: Text(
                      'Rp. 123456',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 300),
                child: Text(
                  'Feature',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Image.asset(
                            'assets/images/Outline.png',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Transfer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/trx.png',
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Top Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Image.asset(
                            'assets/images/bill.png',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Info and Special Promo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Image.network(
                              'https://picsum.photos/id/870/200/300?grayscale&blur=2',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shopping for Vegetables',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'To get 25% cashback',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Image.network(
                              'https://picsum.photos/id/870/200/300?grayscale&blur=2',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shopping for Vegetables',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'To get 25% cashback',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Last Transaction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
