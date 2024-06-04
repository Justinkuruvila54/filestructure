// ignore_for_file: sort_child_properties_last, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:filestructure/core/link_image_constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Linkhomescreenwidgets extends StatefulWidget {
  const Linkhomescreenwidgets({
    super.key,
  });

  @override
  State<Linkhomescreenwidgets> createState() => _LinkhomescreenwidgetsState();
}

class _LinkhomescreenwidgetsState extends State<Linkhomescreenwidgets> {
  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    void _launchURL(String urlString) async {
      final Uri url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $urlString';
      }
    }

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => CircleAvatar(
        radius: 17,
        backgroundColor: Colors.green,
        child: InkWell(
          onTap: () {
            selectedindex = index;

            setState(() {
              _launchURL(Linkimageconstants.linksinhomescreen[index]);
            });
          },
          child: CircleAvatar(
            child: Image.asset(
              Linkimageconstants.linkimageconst[index],
              fit: BoxFit.fill,
            ),
            backgroundColor: Colors.white,
            radius: 15,
          ),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        width: 20,
      ),
      itemCount: Linkimageconstants.linkimageconst.length,
    );
  }
}
