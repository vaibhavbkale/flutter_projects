import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});
  @override
  State<Assignment1> createState()=> _AssignmentState1();

}

class _AssignmentState1 extends State<Assignment1>{
  int _count=0;
  int index=0;
  int _strct=0;
  int _armct=0;
  List ls=[153,121,153,2,145,1,45,56,77];
  void _palindrome(){
    setState(() {
      if(_count!=0)
        _count=0;
      for(int i=0;i<ls.length;i++){
        int temp=ls[i];
        int rev=0;
        while(temp!=0){
          rev=rev*10+ temp%10;
          temp= temp~/10;
        }
        if(rev==ls[i])
          _count++;
          
      }
    });
  }
  void _armstrong(){
    setState(() {
      if(_armct!=0)
        _armct=0;
      for(int i=0;i<ls.length;i++){
      int num=ls[i];
      int temp=ls[i];
      int len=0;
      while(num!=0){
          len++;
          num=num~/10;
      }
      int sum=0;
      while(temp!=0){
        int mult=1;
        for(int i=1;i<=len;i++){
          mult=mult * (temp%10);
        }
        sum=sum+mult;
        temp=temp~/10;
      }
      if(sum==ls[i])
        _armct++;
    }
    });
  }
  int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

bool isStrongNumber(int number) {
  int originalNumber = number;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += factorial(digit);
    number ~/= 10;
  }

  return sum == originalNumber;
}
void strongNum(){
  setState(() {
    if(_strct!=0)
      _strct=0;
    for(int i=0;i<ls.length;i++){
    if(isStrongNumber(ls[i]))
      _strct++;
  }
  });
}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Numbers Count"),
        backgroundColor: Colors.lightBlue,
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Click to find palindrom in List"),
              const SizedBox(
                height: 20,
              ),
              Text("$_count"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: _palindrome, child: const Text("Palindrome Number")),
              const SizedBox(
                height: 20,
              ),
            ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Count of Armstrong Number"),
               const SizedBox(
                height: 20,
              ),
              Text("$_armct"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: _armstrong, child: const Text("Armstrong Number")),
              const SizedBox(
                height: 20,
              ),
              ],
            ),
            Column(
              children: [
                  const Text("Count of Strong Number"),
               const SizedBox(
                height: 20,
              ),
              Text("$_strct"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: strongNum, child: const Text("Strong Number")),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed :(){
                  setState(() {
                    _armct=0;
                    _strct=0;
                    _count=0;
                  });
                }, child: Text("Reset"))
              ],
            )
          ]
          ),
      ),
      backgroundColor: const Color.fromARGB(255, 155, 81, 81),
    );
  }
}