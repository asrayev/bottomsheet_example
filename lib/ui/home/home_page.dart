import 'package:bottomsheet_example/ui/home/widget/my_bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: TextButton(onPressed: ((){
          showModalBottomSheet(context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              builder: (BuildContext context){
               return const MyBottomSheet();
             });
        }), child: const Text("My bottom sheet")),
      ),
    );
  }
}
