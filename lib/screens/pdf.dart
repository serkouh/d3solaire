import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:pdfx/pdfx.dart';

import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

class pddf extends StatefulWidget {
  const pddf({Key? key}) : super(key: key);

  @override
  pddfState createState() => pddfState();
}

class pddfState extends State<pddf> {
  bool _value = true;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = false;
  bool _value5 = true;
  bool _value6 = false;
  bool _value7 = true;
  bool _value8 = false;
  String aa = '';
  TreeController controller = TreeController(allNodesExpanded: false);

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  final StreamController<String> _pageCountController =
      StreamController<String>();
  CollectionReference profileList =
      FirebaseFirestore.instance.collection('preventif');
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  bool _isVisible = false;

  List<String> ga = [];

  Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 21, 101, 192),
          title: const Text('Document'),
          actions: <Widget>[
            StreamBuilder<String>(
                stream: _pageCountController.stream,
                builder: (_, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[900],
                        ),
                        child: Text(snapshot.data!),
                      ),
                    );
                  }
                  return const SizedBox();
                }),
          ],
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 101, 192)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TreeView(
                              treeController: controller,
                              iconSize: 30,
                              indent: 20,
                              nodes: [
                                TreeNode(
                                  content: const Text(
                                    "Support",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  children: [
                                    /* TreeNode(
                          content: const Text(
                        "Introduction",
                        style: TextStyle(fontSize: 17),
                      )),*/

                                    TreeNode(
                                        content: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<dynamic>(
                                                    builder: (_) => PdfReader(
                                                        pdfAssetPath:
                                                            'lib/pdfs/1691412726472.pdf')),
                                              );
                                            },
                                            child: Text(
                                              " simple pose",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ))),
                                    TreeNode(
                                        content: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<dynamic>(
                                                    builder: (_) => PdfReader(
                                                        pdfAssetPath:
                                                            'lib/pdfs/1691412726487.pdf')),
                                              );
                                            },
                                            child: Text(
                                              "simple pose 2",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ))),
                                    TreeNode(
                                        content: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<dynamic>(
                                                    builder: (_) => PdfReader(
                                                        pdfAssetPath:
                                                            'lib/pdfs/1691412726506.pdf')),
                                              );
                                            },
                                            child: Text(
                                              "simple pose 3",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ))),
                                    TreeNode(
                                        content: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<dynamic>(
                                                    builder: (_) => PdfReader(
                                                        pdfAssetPath:
                                                            'lib/pdfs/IMG-20230807-WA0007.pdf')),
                                              );
                                            },
                                            child: Text(
                                              "simple pose 4",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ))),
                                    TreeNode(
                                        content: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<dynamic>(
                                                    builder: (_) => PdfReader(
                                                        pdfAssetPath:
                                                            'lib/pdfs/IMG-20230807-WA0000.pdf')),
                                              );
                                            },
                                            child: Text(
                                              "double pose 1 ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ))),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 101, 192)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TreeView(
                              treeController: controller,
                              iconSize: 30,
                              indent: 20,
                              nodes: [
                                TreeNode(
                                    content: const Text(
                                      "Document",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    children: [])
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 101, 192)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TreeView(
                              treeController: controller,
                              iconSize: 30,
                              indent: 20,
                              nodes: [
                                TreeNode(
                                    content: const Text(
                                      "Experience",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    children: [])
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 101, 192)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TreeView(
                              treeController: controller,
                              iconSize: 30,
                              indent: 20,
                              nodes: [
                                TreeNode(
                                    content: const Text(
                                      "Accesoire",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    children: [])
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 21, 101, 192)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TreeView(
                              treeController: controller,
                              iconSize: 30,
                              indent: 20,
                              nodes: [
                                TreeNode(
                                    content: const Text(
                                      "Marque ",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    children: [])
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          width: 400,
                          height: 30,
                        ),
                      ],
                    )))));
  }
}

class PdfReader extends StatefulWidget {
  final String pdfAssetPath;

  PdfReader({required this.pdfAssetPath});

  @override
  _PdfReaderState createState() => _PdfReaderState();
}

class _PdfReaderState extends State<PdfReader> {
  late PdfController pdfController;
  int currentPage = 1;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Initialize PdfController here
    loadPdfDocument();
  }

  Future<void> loadPdfDocument() async {
    try {
      Future<PdfDocument> document = PdfDocument.openAsset(widget.pdfAssetPath);
      setState(() {
        pdfController = PdfController(document: document);
        isLoading = false;
      });
    } catch (e) {
      print("Error loading PDF: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    pdfController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: Stack(
        children: [
          Visibility(
            visible: !isLoading,
            child: PdfView(
              controller: pdfController,
              onPageChanged: onPageChanged,
            ),
          ),
          Visibility(
            visible: isLoading,
            child: Center(
              child:
                  CircularProgressIndicator(), // Replace with your loading widget
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    pdfController.previousPage(
                      curve: Curves.ease,
                      duration: Duration(milliseconds: 100),
                    );
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {
                    pdfController.nextPage(
                      curve: Curves.ease,
                      duration: Duration(milliseconds: 100),
                    );
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
