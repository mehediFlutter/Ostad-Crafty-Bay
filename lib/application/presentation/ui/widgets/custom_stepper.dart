import 'package:crafty_bay/application/presentation/ui/screens/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper(
      {super.key,
      required this.lowerLimit,
      required this.upperLimit,
      required this.value,
      required this.onChanged});
  final int lowerLimit;
  final int upperLimit;

  int value ;
  final Function(int) onChanged;

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColor.primary
                ),
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                widget.value = widget.value == widget.lowerLimit
                    ? widget.lowerLimit
                    : widget.value - 1;
                    widget.onChanged(widget.value);
              setState(() {});
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(widget.value.toString(),style: Theme.of(context).textTheme.titleMedium,),
          ),
          InkWell(
           child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: AppColor.primary
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            onTap: () {
              widget.value = widget.value == widget.upperLimit
                  ? widget.upperLimit
                  : widget.value += 1;
              widget.onChanged(widget.value);
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
