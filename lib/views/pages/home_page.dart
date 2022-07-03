import 'package:flutter/material.dart';
import 'package:inherited_widget_tarek/controllers/state_controller.dart';
import 'package:inherited_widget_tarek/views/pages/change_color_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stateWidet = StateInheritedWidget.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                stateWidet.state.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.color_lens),
                  label: const Text('change primary swatch'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ChangeColorPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stateWidet.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
