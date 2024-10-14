import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ExpansionTileController controller = ExpansionTileController();
  String dropDownValue = 'item1';
  String popUpValue = 'option1';
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionTile(
              controlAffinity: ListTileControlAffinity.trailing,
              enabled: false,
              controller: controller,
              dense: true,
              // expandedAlignment: Alignment.centerRight,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              backgroundColor: Colors.amber,
              collapsedBackgroundColor: Colors.green,
              textColor: Colors.blue,
              collapsedTextColor: Colors.white,
              onExpansionChanged: (bool isExpansion) {
                print(isExpansion);
              },
              tilePadding: const EdgeInsets.all(50),
              showTrailingIcon: true,
              initiallyExpanded: true,
              title: const Text(
                'Asus Laptop',
              ),
              children: const [
                Text('CPU: Core I9 153525HX'),
                Text('GPU: Nvidia RTX 4090TI'),
                Text('RAM: 128 GB'),
                Text(
                    ';;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;')
              ],
            ),
            Tooltip(
              message: 'close expansion',
              child: ElevatedButton(
                onPressed: () {
                  controller.expand();
                },
                child: const Text(
                  'use expansion controller',
                ),
              ),
            ),
            DropdownButton(
              hint: Text(dropDownValue),
              alignment: AlignmentDirectional.bottomCenter,
              isExpanded: true,
              // value: dropDownValue,
              items: const [
                DropdownMenuItem<String>(
                  value: 'item1',
                  child: Text(
                    'item1',
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'item2',
                  child: Text(
                    'item2',
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'item3',
                  child: Text(
                    'item3',
                  ),
                ),
              ],
              onChanged: (value) {
                dropDownValue = value!;
                setState(() {});
              },
            ),
            PopupMenuButton(
              initialValue: popUpValue,
              tooltip: 'popup menu',
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'option1',
                    child: Text(
                      'option1',
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'option2',
                    child: Text(
                      'option2',
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'option3',
                    child: Text(
                      'option3',
                    ),
                  ),
                ];
              },
            ),
            Switch(
              activeColor: Colors.amber,
              activeTrackColor: Colors.pink,
              thumbColor: const WidgetStatePropertyAll(Colors.red),
              value: switchValue,
              onChanged: (value) {
                switchValue = value;
                setState(() {});
              },
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      iconColor: Colors.red,
                      icon: const Icon(
                        Icons.warning,
                        size: 50,
                      ),
                      title: const Text(
                        'Are you sure to delete car ?',
                      ),
                      content: const Text('hello'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Yes',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Close',
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'show alert Dialog',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Are you sure to delete car ?',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Yes',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Close',
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('show dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AboutDialog(
                      applicationIcon: Icon(Icons.facebook_outlined),
                      applicationName: 'Face Book',
                      applicationLegalese: 'applicationLegalese',
                      applicationVersion: '1.0.0',
                    );
                  },
                );
              },
              child: const Text(
                'show about dialog',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
