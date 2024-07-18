import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class Login with ChangeNotifier {
  String username;
  String password;

  Login({required this.username, required this.password});

  void changePassword(String password) {
    this.password = password;
    notifyListeners();
  }
}

class Employee with ChangeNotifier {
  int empId;
  String empName;
  String username;
  String password;

  Employee(
      {required this.empId,
      required this.empName,
      required this.username,
      required this.password});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return Login(username: "vaibhavvv", password: "New@5473");
        }),
        ChangeNotifierProxyProvider<Login, Employee>(
          create: (context) {
            return Employee(
              empId: 33,
              empName: "Vaibhav Kale",
              username: Provider.of<Login>(context, listen: false).username,
              password: Provider.of<Login>(context, listen: false).password,
            );
          },
          update: (context, login, employee) {
            return Employee(
              empId: 33,
              empName: "Vaibhav Kale",
              username: login.username,
              password: login.password,
            );
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
  State createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Employee>(context).username),
            const SizedBox(height: 20),
            Consumer<Login>(builder: (context, login, child) {
              return Text(login.password);
            }),
            const SizedBox(height: 20),
            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(height: 20),
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<Login>(context, listen: false)
                    .changePassword("LAtest@77837987");
              },
              child: const Text("Change Password"),
            ),
          ],
        ),
      ),
    );
  }
}
