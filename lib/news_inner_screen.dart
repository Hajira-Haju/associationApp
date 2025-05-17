import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsOnClick extends StatelessWidget {
  const  NewsOnClick ({Key? key, required this.imgUrl, required this.description, required this.title,}) : super(key: key);

  get bottomSheet=> null;

 final String imgUrl;
 final String description;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    Image.network(
                      imgUrl,
                      errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.orange),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(backgroundColor : Colors.white,onClosing:() {
      }, builder: (context) => SizedBox(
        height: 510,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                    title,
                  style: TextStyle(fontSize: 25, color: Colors.black87,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.black87
                ),
                    ),
              ),
            ],
          ),
        ),
      )
      ),
    );
  }
}