import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Fashion Wanita'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBanner(),
              const SizedBox(height: 20),
              _buildCategorySection(),
              const SizedBox(height: 20),
              _buildProductSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  // Banner promosi sederhana dengan slider
  Widget _buildBanner() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.pinkAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: PageView(
        children: [
          _buildBannerItem(
            'Sepatu & Tas Wanita Eksklusif',
            'Diskon Hingga 50%!',
            'http://graphicgoogle.com/wp-content/uploads/2017/10/Facebook-Fashion-Big-Sale-Banner.jpg',
          ),
          _buildBannerItem(
            'Koleksi Musim Panas Terbaru',
            'Fashion yang Memikat!',
            'https://marketplace.canva.com/EAFGKRRskMs/1/0/1600w/canva-brown-and-beige-minimalist-fashion-banner-lYcbGpUSVGo.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildBannerItem(String title, String subtitle, String imageUrl) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Kategori produk
  Widget _buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Kategori',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCategoryItem('Sepatu', Icons.directions_walk),
            _buildCategoryItem('Tas', Icons.shopping_bag),
            _buildCategoryItem('Aksesoris', Icons.watch),
          ],
        ),
      ],
    );
  }

  // Widget kategori produk
  Widget _buildCategoryItem(String label, IconData icon) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            child: Icon(icon, color: Colors.pinkAccent, size: 30),
          ),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  // Daftar produk populer
  Widget _buildProductSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Produk Populer',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildProductItem('Sepatu Stylish', 'https://down-id.img.susercontent.com/file/sg-11134201-22110-qnkktikyepjv57', 59.99),
            _buildProductItem('Tas Elegan', 'https://down-id.img.susercontent.com/file/sg-11134201-23020-1yhm4cjj2knv43', 79.99),
            _buildProductItem('Sneakers Trendy', 'https://down-id.img.susercontent.com/file/id-11134207-7qukz-lfryeqdtr4sd34', 49.99),
            _buildProductItem('Backpack Fashion', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iKr_06rcqOKU/v2/-1x-1.jpg', 69.99),
          ],
        ),
      ],
    );
  }

  // Widget item produk
  Widget _buildProductItem(String name, String imageUrl, double price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text('\$$price', style: const TextStyle(color: Colors.pinkAccent)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Footer
  Widget _buildFooter() {
    return BottomAppBar(
      color: Colors.pinkAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
