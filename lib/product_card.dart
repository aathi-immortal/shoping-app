import 'package:flutter/material.dart';

class product_card extends StatefulWidget {
  final title;
  final price;
  final image;
  final backColor;
  const product_card({
    required this.title,
    required this.price,
    required this.image,
    required this.backColor,
    super.key,
  });

  @override
  State<product_card> createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: widget.backColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.price.toString(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset(
                  widget.image,
                  height: 160,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
