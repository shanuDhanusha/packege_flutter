import 'package:flutter/material.dart';


class ButtonCustomer extends StatefulWidget {
 final double borderRadius;
 final String buttonName;
 final Color buttonColor;
 Function customFunction;


   ButtonCustomer({
       super.key,
       required this.borderRadius,
       required this.buttonName,
       required this.buttonColor,
       required this.customFunction
  }
      );

  @override
  State<ButtonCustomer> createState() => _ButtonCustomerState();
}

class _ButtonCustomerState extends State<ButtonCustomer> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double heghit=MediaQuery.of(context).size.height;
    return GestureDetector(
        onTap: ()=>widget.customFunction(),
      child: Container(
          width: width/3,
          height:width/10 ,
         decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
            color:widget.buttonColor
         ),
        child: Center(
            child: Text(
               widget.buttonName,
               style: const TextStyle(
                 fontSize: 15,
                 color: Colors.white
               ),

            ),
        ),
      ),
    );
  }
}


