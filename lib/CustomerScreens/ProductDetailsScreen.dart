import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/CustomWidgets/ItemList.dart';
import 'package:multivendor_ecommerce/Global.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen({Key? key, required this.productID}) : super(key: key);
  int productID;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product details",
          style: headingTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  color: Colors.white,
                  child: Image.asset(
                    "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                    height: 200,
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                            height: 70)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                            height: 70)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                            height: 70)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                            "assets/Product-Images/Asus-Zenbook-duo-ux482.jpg",
                            height: 70)),
                  ),
                ],
              ),
              Text(
                "Asus Zennbook Duo",
                style: titleTextStyle,
              ),
              SizedBox(height: 10,),
              Text(
                "Processor: Intel Core i7-1165G7 (12M Cache, 2.80 GHz up to 4.70 GHz)\n RAM: 16GB LPDDR4X\n Storage: 512GB SSD\n Display: 14inch FHD (1920 x 1080) IPS\n",
                style: descriptionTextStyle,
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                // color: Colors.red,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select variation",
                      style: titleTextStyle,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "32GB Ram",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "1TB SSD",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Nvidia MX 450",
                                  style: descriptionTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Rating and review", style: titleTextStyle,)),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    surfaceTintColor: liteCardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("Micheal John", style: titleTextStyle,)),
                              Text("4/5")
                            ],
                          ),
                          SizedBox(height: 4,),
                          Text("Very good product")
                        ],
                      ),
                    )
                  );
                },
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // Row(
                      //   children: [
                      //     Expanded(child: Text("Quantity", style: titleTextStyle,)),
                      //     Text("10", style: descriptionTextStyle,),
                      //   ],
                      // ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          Expanded(child: Text("Price", style: titleTextStyle,)),
                          Text("\$1,899", style: titleTextStyle,),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => secondaryButtonColor)), child: Text("Buy Now", style: titleTextStyle,))),
                          SizedBox(width: 10,),
                          Expanded(child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => primaryButtonColor)), child: Text("Add to Cart", style: titleTextStyle,))),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Similar items", style: headingTextStyle,),
              ),
              ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(productID: 0)));
                      },
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/Product-Images/hp-spectre-x360.jpg"),
                                width: 210,
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 270,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "HP Spectre",
                                        style: titleTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Intel® Core™ i5-1335U",
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                      Text("Intel® Iris® Xe Graphics", style: descriptionTextStyle,softWrap: true,),
                                      Text(
                                        "\$1390",
                                        style: descriptionTextStyle,
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

