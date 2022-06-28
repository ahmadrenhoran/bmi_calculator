import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, required this.onPress});

  final Color color;
  final Widget cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
//
//
// class ReusableCard extends StatefulWidget {
//   ReusableCard({required this.color, required this.cardChild, required this.onPress});
//
//   final Color color;
//   final Widget cardChild;
//   final VoidCallback onPress;
//   @override
//   State<ReusableCard> createState() => _ReusableCardState();
// }
//
// class _ReusableCardState extends State<ReusableCard> {
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         widget.onPress;
//       },
//       child: Container(
//         margin: EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//             color: widget.color, borderRadius: BorderRadius.circular(15.0)),
//         child: widget.cardChild,
//       ),
//     );
//   }
// }
