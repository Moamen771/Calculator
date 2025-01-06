import 'package:calculator/components.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key, required this.history});

  final List<Map<String, String>> history;

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "History",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                widget.history.clear();
                setState(() {});
              },
              icon: Icon(
                Icons.delete_outline,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: widget.history.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.history[index]["output"]!,
                  style: TextStyle(fontSize: 36, color: secondaryColor),
                ),
                Text(
                  " = ${widget.history[index]["result"]!}",
                  style: TextStyle(fontSize: 55, color: Colors.white),
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                  height: 32,
                  indent: 10,
                  endIndent: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}