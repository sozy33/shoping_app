import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxpro/pages/details.dart';

import '../conttoler/controler.dart';
import '../wigtes/texfild_icon.dart';
import '../wigtes/text_icon.dart';

class Home_pages extends StatefulWidget {
  const Home_pages({Key? key}) : super(key: key);

  @override
  State<Home_pages> createState() => _Home_pagesState();
}

class _Home_pagesState extends State<Home_pages> {
  final c = Get.put(controler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4f4f4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            textfild_icon(),
            SizedBox(
              height: 20,
            ),
            text_icon(),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => c.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: c.product_list.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  c.product_list[index]?['image'] ?? '',
                                  fit: BoxFit.cover,
                                  width: 50,
                                  // height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // only one line of title
                                    GestureDetector(
                                      onTap: () {
                                        Get.toNamed('/details',
                                            arguments: c.product_list[index]);
                                        Get.to(
                                            () => ProductDetailsPage(
                                                product: c.product_list[index]),
                                            transition: Transition.zoom);
                                      },
                                      child: Text(
                                        c.product_list[index]['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      c.product_list[index]['price'].toString(),
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
