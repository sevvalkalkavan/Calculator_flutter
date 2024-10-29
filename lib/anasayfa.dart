import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 50.0, bottom: 10),
                child: Text("data",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonFeature(deger: "AC", color: Colors.deepOrangeAccent),
                    ButtonFeature(deger: "+/-", color: Colors.grey),
                    ButtonFeature(deger: "%", color: Colors.grey),
                    ButtonFeature(deger: "/", color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonFeature(deger: "7", color: Colors.white54),
                    ButtonFeature(deger: "8", color: Colors.white54),
                    ButtonFeature(deger: "9", color: Colors.white54),
                    ButtonFeature(deger: "x", color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonFeature(deger: "4", color: Colors.white54),
                    ButtonFeature(deger: "5", color: Colors.white54),
                    ButtonFeature(deger: "6", color: Colors.white54),
                    ButtonFeature(deger: "-", color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonFeature(deger: "1", color: Colors.white54),
                    ButtonFeature(deger: "2", color: Colors.white54),
                    ButtonFeature(deger: "3", color: Colors.white54),
                    ButtonFeature(deger: "+", color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox( width: 170 , height: 80, child:
                    ElevatedButton(onPressed: (){},
                      child: Text("0"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        backgroundColor: Colors.white54
                      ),
                    )
                    ),

                    ButtonFeature(deger: ",", color: Colors.white54),
                    ButtonFeature(deger: "=", color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonFeature extends StatelessWidget {
  String deger;
  Color color;
  ButtonFeature({required this.deger, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox( width: 80 , height: 80, child:
    ElevatedButton(onPressed: (){},
      child: Text(deger),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
        ),
        backgroundColor: color,
        foregroundColor: Colors.black
      ),
    )
    );

  }
}


