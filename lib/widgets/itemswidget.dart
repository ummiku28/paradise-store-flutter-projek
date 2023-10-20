import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  final List<String> productNames = [
    "Elena Heels",
    "Nave Jam Tangan",
    "Meili Bag",
    "Ilai Bag",
    "n-Sling Bag",
    "Sell Heels",
    "Azaz Jam Tangan",
  ];
  final List<String> productDescriptions = [
    "Heels tinggi 5cm",
    "Jam Tangan analog",
    "Tas laptop",
    "Tas Make Up",
    "Sling bag lucu",
    "Heels tinggi 3cm",
    "jam tangan kulit",
  ];

final List<double> productPrices = [
   1,3,5,6,7,3,8
  ];
  final List<bool> showDiscount = [false, true, false, true, true, false, true]; // Tambahkan ini


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(7, (i) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
         
                     child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (showDiscount[i]) // Tampilkan diskon hanya pada produk tertentu
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-20%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  
                  Icon(
                    Icons.favorite_border,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/${i + 1}.png",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  productNames[i], // Nama produk
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff4c53a5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                 Container(
                alignment: Alignment.center,
                child: Text(
                  productDescriptions[i], // Deskripsi produk
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${productPrices[i].toStringAsFixed(2)}", // Harga produk
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c53a5),
                      ),
                    ),
              // Container(
              //   padding: EdgeInsets.only(bottom: 8),
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     productNames[i],
              //     style: TextStyle(
              //       fontSize: 18,
              //       color: Color(0xff4c53a5),
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // Container(
              //   alignment: Alignment.center,
              //   child: Text(
              //     "Tulis deskripsi produk",
              //     style: TextStyle(
              //       fontSize: 15,
              //       color: Color(0xff4c53a5),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "\55.000",
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //           color: Color(0xff4c53a5),
              //         ),
              //       ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Color(0xff4c53a5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
