import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
 final String iconPath;
 final String title;
 final String subtitle;

  const MyList({super.key, 
  required this.iconPath,
  required this.title,
   required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 20),
    child: Row(
      children: [ 
        Container(
          height: 70,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20)
          ),
          child:Image.asset(iconPath) ,
        ),
        SizedBox(width: 20),
        Row(
          children: [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
            
              children: [ 
                Text(title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                SizedBox(height: 8),
                Text(subtitle,
                style: TextStyle( 
                  fontWeight: FontWeight.bold,
                  fontSize: 4,
                  color: Colors.grey[500]
                ),
                )
            
              ],
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios,
        color: Colors.white,)
        
      ],
    ),
    );
  }
}