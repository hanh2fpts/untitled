import 'package:flutter/material.dart';
import 'package:untitled/presentation/widgets/custom_scaffold_widget.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldWidget(
          titlePage: 'EzMobile Tranding', context: context),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
