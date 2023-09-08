import 'package:flutter/material.dart';

class SocialMediaSpace extends StatelessWidget {
  const SocialMediaSpace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 4,
              ),
              color: Colors.white,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Chain_link_icon_slanted.png/800px-Chain_link_icon_slanted.png',
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 4,
              ),
              color: Colors.white,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_-Oe_Kwr62vEHmZ_O_OdrqvE8HJ11q7XTw&usqp=CAU',
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 4,
              ),
              color: Colors.white,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/800px-Facebook_f_logo_%282021%29.svg.png',
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 4,
              ),
              color: Colors.white,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/800px-LinkedIn_logo_initials.png',
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 3,
              ),
              color: Colors.white,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png',
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
