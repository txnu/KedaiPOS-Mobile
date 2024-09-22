import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/buttons/button_add.dart';
import 'package:kedaipos_mobile/components/forms/ProductForm.dart';
import 'package:kedaipos_mobile/components/tables/table_product.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final List<Map<String, String>> products = [
    {
      "kodeProduk": "001",
      "namaproduk": "Produk A",
      "modal": "Rp20.000",
      "hargaJual": "Rp50.000",
      "stok": "5",
    },
    {
      "kodeProduk": "002",
      "namaproduk": "Produk B",
      "modal": "Rp10.000",
      "hargaJual": "Rp30.000",
      "stok": "8",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Daftar Produk",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: TableProduct(
            products: products,
          ),
        ),
        floatingActionButton: ButtonAdd(onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddProductForm(),
            ),
          );
        }));
  }
}

class AddProductForm extends StatelessWidget {
  const AddProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductForm(),
    );
  }
}
