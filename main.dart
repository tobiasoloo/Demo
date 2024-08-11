import 'package:flutter/material.dart';
void main() => runApp(Myapp());
class Myapp extends StatelessWidget 
{
    @override
    Widget build(BuildContent context)
    {
        return MaterialApp(debugShowCheckedModeBanner: false, home: Calculator(),);
    }
}
class Calculator extends StatelessWidget
{
    @override
    _CalculatorState createState() => _CalculatorState();
}
class _CalculatorState extends state<Calculator>
{
    Widget calcbutton(String btntxt,Color btncolor, Color txtcolor) {
        return Container(
            child: RaisedButton(
                onPressed: (){

                },
                child: Text(btntxt,
                style: TestStyle(
                    fontSize: 35,
                    color: txtcolor,
                ),
                ),
                shape: CircleBorder(),
                color: btncolor,
                padding: EdgeInsets.all(20),
                ),

        );
    }
    @override
    Widget build(BuildContent context)
    {
        return Scaffold
        (
            backgroundColor: Colors.black,
            appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.black,),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                    Padding(padding: EdgeInsets.all(10.0),
                                    child: Text('0',
                                    textAlign: TextAlign.left,
                                    style: TestStyle(color: Colors.white,
                                    fontSize: 100
                                    ),
                                    ),
                                    ),
                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    calcbutton('AC', Colors.grey, Colors.black),
                                    calcbutton('+/-', Colors.grey, Colors.black),
                                    calcbutton('%', Colors.grey, Colors.black),
                                    calcbutton('/', Colors.amber[700], Colors.white),
                                ],
                            ),
                            SizedBox(height: 10,),

                          Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    calcbutton('7', Colors.grey[850], Colors.white,
                                    calcbutton('8', Colors.grey[850], Colors.white),
                                    calcbutton('9', Colors.grey[850], Colors.white),
                                    calcbutton('x', Colors.amber[700], Colors.white),
                                ],
                            ),
                            SizedBox(height: 10,),  

                           Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    calcbutton('4', Colors.grey, Colors.black),
                                    calcbutton('5', Colors.grey, Colors.black),
                                    calcbutton('6', Colors.grey, Colors.black),
                                    calcbutton('-', Colors.amber[700], Colors.white),
                                ],
                            ),
                            SizedBox(height: 10,),Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                    calcbutton('1', Colors.grey, Colors.black),
                                    calcbutton('2', Colors.grey, Colors.black),
                                    calcbutton('3', Colors.grey, Colors.black),
                                    calcbutton('+', Colors.amber[700], Colors.white),
                                ],
                            ),
                            SizedBox(height: 10,),



                        ),
                    ],
                ),
            ),
        );
    }
}