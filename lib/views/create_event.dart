import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/views/Event_Name.dart';
import 'package:flutter_application_1/views/home_view.dart';
import 'package:flutter_application_1/widgets/custom_radio_button.dart';

class CreatEvent extends StatefulWidget {
  CreatEvent({super.key});

  @override
  State<CreatEvent> createState() => _CreatEventState();
}

class _CreatEventState extends State<CreatEvent> {
  int selectedIndex = -1;
  List<String> _list = ['بطولة', 'تجمع', 'ندوة', 'ورشة عمل', 'مسابقة'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('نوع الفعالية'),
            Wrap(
              direction: Axis.vertical,
              children: List.generate(5, (index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                          print(index);
                        });
                      },
                      child: Text(_list[index]),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(35, 255, 255, 255),
                          side: BorderSide(color: Colors.white, width: (index == selectedIndex) ? 3 : 1)),
                    ),
                  ),
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EventName(),
                ));
              },
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
