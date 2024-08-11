import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ShoeCustomizerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoeCustomizerScreen(),
    );
  }
}

class ShoeCustomizerScreen extends StatefulWidget {
  @override
  _ShoeCustomizerScreenState createState() => _ShoeCustomizerScreenState();
}

class _ShoeCustomizerScreenState extends State<ShoeCustomizerScreen> {
  Color soleColor = Colors.brown;
  Color upperColor = Colors.white;
  String Kimage1 = 'imgs/white_parts.png';
  String Kimage2 = 'imgs/brown_parts.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Shoe Customizer'),
      ),
      body: Container(
        height: 500,
        child: Column(
          children: [
            // عرض الصورة مع تأثيرات الألوان
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(soleColor, BlendMode.modulate),
                    child: Image.asset(Kimage1),
                  ),
                  ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(upperColor, BlendMode.modulate),
                    child: Image.asset(Kimage2),
                  ),
                  // Image.asset(Kimage1),
                  // Image.asset(Kimage2),
                  // يمكنك إضافة تأثيرات أخرى لأجزاء مختلفة من الصورة بنفس الطريقة
                ],
              ),
            ),
            // أداة اختيار الألوان
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorPickerButton(
                  color: soleColor,
                  onColorChanged: (color) {
                    setState(() {
                      soleColor = color;
                    });
                  },
                  label: 'Change Sole Color',
                ),
                ColorPickerButton(
                  color: upperColor,
                  onColorChanged: (color) {
                    setState(() {
                      upperColor = color;
                    });
                  },
                  label: 'Change Upper Color',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColorPickerButton extends StatelessWidget {
  final Color color;
  final ValueChanged<Color> onColorChanged;
  final String label;

  ColorPickerButton(
      {required this.color, required this.onColorChanged, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () async {
            Color? pickedColor = await showDialog<Color>(
              context: context,
              builder: (context) {
                return ColorPickerDialog(initialColor: color);
              },
            );
            if (pickedColor != null) {
              onColorChanged(pickedColor);
            }
          },
          child: Container(
            width: 50,
            height: 50,
            color: color,
          ),
        ),
      ],
    );
  }
}

class ColorPickerDialog extends StatelessWidget {
  final Color initialColor;

  ColorPickerDialog({required this.initialColor});

  @override
  Widget build(BuildContext context) {
    Color currentColor = initialColor;

    return AlertDialog(
      title: Text('Pick a color'),
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: currentColor,
          onColorChanged: (color) {
            currentColor = color;
          },
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text('Select'),
          onPressed: () {
            Navigator.of(context).pop(currentColor);
          },
        ),
      ],
    );
  }
}
