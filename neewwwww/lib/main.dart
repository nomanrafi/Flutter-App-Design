import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://images.pexels.com/photos/30097299/pexels-photo-30097299/free-photo-of-bookshop-facade-on-edinburgh-street.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', width: 100),
              SizedBox(width: 20),
              Image.network('https://images.pexels.com/photos/31000796/pexels-photo-31000796/free-photo-of-flying-indian-nightjar-in-natural-habitat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', width: 100),
            ],
          ),
          SizedBox(height: 20),
          if (!isChecked)
            TextField(
              decoration: InputDecoration(
                hintText: 'Placeholder',
                border: OutlineInputBorder(),
              ),
            ),
          CheckboxListTile(
            title: Text('Vanishes if checked'),
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page2()));
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  double sliderValue = -20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Slider', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Slider(
            min: -20,
            max: 400,
            divisions: 21,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          Text('Value: ${sliderValue.toStringAsFixed(1)}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Image.network('https://images.pexels.com/photos/30871781/pexels-photo-30871781/free-photo-of-architectural-shadows-in-sultan-qaboos-mosque-corridor.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', width: 150),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page3()));
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final TextEditingController _controller = TextEditingController();
  List<String> items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry', 'Fig', 'Grapes', 'Honeydew'];

  void _addItem() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        items.add(_controller.text);
        _controller.clear();
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Fruits List', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter item',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _addItem,
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: ListTile(
                    title: Text(items[index], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                    leading: Icon(Icons.food_bank, color: Colors.green),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _removeItem(index),
                    ),
                  ),
                );
              },
            ),
          ),
          Image.network('https://images.pexels.com/photos/26238873/pexels-photo-26238873/free-photo-of-a-drink-topped-with-a-slice-of-orange-standing-on-the-edge-of-a-plant-pot.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load', width: 150),
        ],
      ),
    );
  }
}
