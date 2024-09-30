import 'package:flutter/material.dart';
import 'package:widgets_etc/view/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController textEditingController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(
      //     Icons.add,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) {
          //     return const HomePage();
          //   }),
          // );
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ));
        },
        label: const Text('Extnded FAB'),
        icon: const Icon(
          Icons.abc,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.yellow,
                  width: 3,
                ),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shadowColor: Colors.blue,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(200, 70),
                maximumSize: const Size(200, 70),
              ),
              onPressed: () {
                print('button has clicked');
              },
              onLongPress: () {
                print('on long press');
              },
              onHover: (value) {
                print(value);
              },
              child: const Text(
                'Click me',
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(),
              onPressed: () {},
              child: const Text(
                'Filled Button',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Outline Button',
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Text Button',
              ),
            ),
            IconButton(
              iconSize: 100,
              onPressed: () {},
              icon: const Icon(
                Icons.more,
              ),
              selectedIcon: const Icon(
                Icons.more_outlined,
              ),
              isSelected: false,
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: TextFormField(
                controller: textEditingController,
                validator: (String? value) {
                  RegExp emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (!emailValid.hasMatch(value!)) {
                    return 'Not Valid Email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      onVisible: () {
                        print('hello');
                      },
                      duration: const Duration(
                        seconds: 1,
                      ),
                      action: SnackBarAction(
                        label: 'Hide',
                        onPressed: () {},
                      ),
                      width: 300,
                      backgroundColor: Colors.grey,
                      behavior: SnackBarBehavior.floating,
                      // margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      content: const Text('Not Valid Email'),
                    ),
                  );
                }
              },
              child: const Text(
                'login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
