import 'package:flutter/material.dart';

class HealthTest2 extends StatefulWidget {
  const HealthTest2({super.key});

  @override
  State<HealthTest2> createState() => _HealthTest2State();
}

class _HealthTest2State extends State<HealthTest2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       leading: IconButton(
         onPressed:(){
           Navigator.pop(context);
         },
           icon:const Icon(Icons.arrow_back_ios_new)),
        title: const Text("HealthTest2"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:  Padding(
        padding: EdgeInsets.only(left: 30,top: 20),
        child: Column(
          children: [
            Text("Select the symptoms you currently have"),
            ListView.separated(itemBuilder: (c,i){return ListTile(
              title: Text("Headache"),
              //leading: Checkbox(onChanged: (c){},value: true),
            ); }, separatorBuilder: (context, index) {
              return SizedBox(height: 10,);
            }, itemCount: 10)
          ],
        ),
      ),
    );
  }
}
