import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';

class MainButton extends StatelessWidget {
  String _uri;
  String _content;
  bool _enable;

  MainButton(this._content, this._uri, {enable = true})
  {
    _enable = enable;
  }


  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 355,
      height: 50,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, _uri);
        },
        child: Align(
          alignment: Alignment.center,
          child: Text(
            _content,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        border: Border.all(color: _enable?resMainColor:Color(0xffd3d3d3)),
        color: _enable?resMainColor:Color(0xffd3d3d3),
      ),
    );
  }
}
