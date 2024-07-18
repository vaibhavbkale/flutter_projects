import "dart:developer";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class Login with ChangeNotifier {
  String userName;
  String password;

  Login({required this.userName, required this.password});

  void changePassword(String password) {
    this.password = password;
    notifyListeners();
  }
}

class Employee with ChangeNotifier {
  int empId;
  String empName;
  String userName;
  String password;

  Employee(
      {required this.empId,
      required this.empName,
      required this.userName,
      required this.password});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return Login(userName: "vaibhavbkale", password: "Vaibhav@1234");
        }),
        ChangeNotifierProxyProvider<Login, Employee>(
          create: (context) {
            log("IN CREATE");
            return Employee(
                empId: 12,
                empName: "Vaibhav",
                userName: Provider.of<Login>(context, listen: false)
                    .userName, // hereeeeeeeee
                password: Provider.of<Login>(context, listen: false).password);
          },
          update: (context, login, employee) {
            log("IN UPDATE");
            return Employee(
                empId: 12,
                empName: "Vaibhav",
                userName: login.userName,
                password: login.password);
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ProxyProvider"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Login>(context).userName),
            const SizedBox(height: 20),
            Consumer<Login>(builder: (context, login, child) {
              return Text(login.password);
            }),
            const SizedBox(height: 20),
            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(
              height: 20,
            ),
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<Login>(context, listen: false)
                    .changePassword("newPassword@#");
              },
              child: const Text("Change Password"),
            ),
          ],
        ),
      ),
    );
  }
}
