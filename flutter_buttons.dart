import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TEXT BUTON YAPISI
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.pink),
          ),
          child: Text('TEXT BUTON'),
        ),
        //ICONLU TEXT BUTTON
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.grey;
              }
              return null;
            }),
            overlayColor:
                MaterialStateProperty.all(Colors.yellow.withOpacity(0.4)),
          ),
          icon: Icon(Icons.abc),
          label: Text('Text button with icon'),
        ),
        //EN SIK KULLANILAN ELEVATED BUTTON
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Button'),
        ),
        //ELEVATED BUTON VE ICON
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              side: BorderSide(width: 2),
            ),
            primary: Colors.green,
            onPrimary: Colors.orange,
          ),
          icon: Icon(Icons.add),
          label: Text('Elevated with icon'),
        ),
        //OUTLİNE BUTTON
        OutlinedButton(
            onPressed: () {}, child: Text('outline kullanılabilir.')),
        //OUTLİNE BUTON VE İKON
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.black, width: 5),
          ),
          label: Text('outline button ve ikon'),
        )
      ],
    );
  }
}
