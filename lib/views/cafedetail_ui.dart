import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CafeDetailUI extends StatefulWidget {
  String name = '';
  String website = '';
  String mobile = '';
  String image = '';
  String pikad = '';
  String open = '';

  CafeDetailUI({
    Key? key,
    required this.name,
    required this.website,
    required this.mobile,
    required this.image,
    required this.pikad,
    required this.open,
  }) : super(key: key);

  @override
  _CafeDetailUIState createState() => _CafeDetailUIState();
}

class _CafeDetailUIState extends State<CafeDetailUI> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9E9D4),
      appBar: AppBar(
        title: Text(
          'Café Detail',
        ),
        centerTitle: true,
        backgroundColor: Color(0xff925B16),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40.0,
                child: Card(
                  color: Color(0xff925B16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          5.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xffFFF6EB),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              width: 250.0,
                              child: Text(
                                ' ' + widget.name,
                                style: TextStyle(
                                  color: Color(0xffFFF6EB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xffFFF6EB),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          5.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.doorClosed,
                              color: Color(0xffFFF6EB),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              width: 250.0,
                              child: Text(
                                'เปิด ' + widget.open,
                                style: TextStyle(
                                  color: Color(0xffFFF6EB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xffFFF6EB),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.phoneAlt,
                              color: Color(0xffFFF6EB),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0),
                              width: 250.0,
                              child: Text(
                                'เบอร์โทร ' + widget.mobile,
                                style: TextStyle(
                                  color: Color(0xffFFF6EB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xffFFF6EB),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globe,
                              color: Color(0xffFFF6EB),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0),
                              width: 250.0,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _launchInBrowser(widget.website);
                                    });
                                  },
                                  child: Text(
                                    '' + widget.website,
                                    style: TextStyle(
                                      color: Color(0xffFFF6EB),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xffFFF6EB),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _makePhoneCall('tel:' + widget.mobile);
                      });
                    },
                    icon: Icon(
                      Icons.call,
                      color: Color(0xffFFF6EB),
                    ),
                    label: Text(
                      'Tel',
                      style: TextStyle(
                        color: Color(0xffFFF6EB),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff925B16),
                      fixedSize: Size(
                        90.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _launchInBrowser(widget.pikad);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.mapMarker,
                      color: Color(0xffFFF6EB),
                    ),
                    label: Text(
                      'Map',
                      style: TextStyle(
                        color: Color(0xffFFF6EB),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff925B16),
                      fixedSize: Size(
                        90.0,
                        50.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
