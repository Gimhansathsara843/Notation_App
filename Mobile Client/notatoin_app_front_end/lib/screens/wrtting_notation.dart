import 'package:flutter/material.dart';

class WrittingNotation extends StatefulWidget {
  const WrittingNotation({super.key});

  @override
  _WrittingNotationState createState() => _WrittingNotationState();
}

class _WrittingNotationState extends State<WrittingNotation> {
  final TextEditingController _notationController = TextEditingController();
  bool _isCustomKeyboardVisible = false;

  void _onTextChanged(String text) {
    // Update character count or other logic
  }

  void _insertText(String text) {
    final cursorPosition = _notationController.selection.baseOffset;
    final newText = _notationController.text.replaceRange(
      cursorPosition,
      cursorPosition,
      text,
    );
    _notationController.value = TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: cursorPosition + text.length),
    );
  }

  void _deleteText() {
    final cursorPosition = _notationController.selection.baseOffset;
    if (cursorPosition > 0) {
      final newText = _notationController.text.replaceRange(
        cursorPosition - 1,
        cursorPosition,
        '',
      );
      _notationController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: cursorPosition - 1),
      );
    }
  }

  void _toggleCustomKeyboard() {
    setState(() {
      _isCustomKeyboardVisible = !_isCustomKeyboardVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write Notation'),
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Save the notation
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Notation saved successfully!'),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Column(
        children: [
          // Notation Writing Area
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _notationController,
                decoration: InputDecoration(
                  hintText: 'Start typing...',
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Colors.transparent,
                ),
                style: TextStyle(fontSize: 18),
                maxLines: null,
                readOnly: true,
                onChanged: _onTextChanged,
                onTap: _toggleCustomKeyboard,
              ),
            ),
          ),

          // Custom Keyboard
          if (_isCustomKeyboardVisible)
            CustomKeyboard(
              onKeyPressed: _insertText,
              onDeletePressed: _deleteText,
              onDonePressed: _toggleCustomKeyboard,
            ),
        ],
      ),
    );
  }
}

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;
  final VoidCallback onDeletePressed;
  final VoidCallback onDonePressed;

  const CustomKeyboard({
    Key? key,
    required this.onKeyPressed,
    required this.onDeletePressed,
    required this.onDonePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top row with accidentals
          _buildButtonRow(
            ['C#', 'Eb', null, 'F#', 'Ab', 'Bb'],
            context,
          ),
          
          SizedBox(height: 8),
          
          // Bottom row with natural notes
          _buildButtonRow(
            ['C', 'D', 'E', 'F', 'G', 'A', 'B'],
            context,
          ),
          
          SizedBox(height: 8),
          
          // Control buttons
          Row(
            children: [
              // Space Button
              Expanded(
                flex: 1,
                child: _buildSpecialButton(
                  'space',
                  context,
                  onPressed: () => onKeyPressed(' '),
                ),
              ),
              
              // Backspace Button
              Expanded(
                flex: 1,
                child: _buildSpecialButton(
                  '',
                  context,
                  icon: Icons.arrow_back,
                  onPressed: onDeletePressed,
                ),
              ),
              
              // OK Button
              Expanded(
                flex: 1,
                child: _buildSpecialButton(
                  'ok',
                  context,
                  onPressed: onDonePressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  Widget _buildButtonRow(List<String?> notes, BuildContext context) {
    return Row(
      children: notes.map((note) {
        if (note == null) {
          return Expanded(
            child: SizedBox(), // Empty space for null entries
          );
        }
        
        return Expanded(
          child: Container(
            margin: EdgeInsets.all(4),
            child: AspectRatio(
              aspectRatio: 1, // Keep buttons square
              child: ElevatedButton(
                onPressed: () => onKeyPressed(note),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    note,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
  
  Widget _buildSpecialButton(
    String text,
    BuildContext context, {
    IconData? icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: EdgeInsets.all(4),
      child: AspectRatio(
        aspectRatio: 1, // Keep buttons square
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: EdgeInsets.zero,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: Colors.black, width: 2),
            ),
          ),
          child: Center(
            child: icon != null
                ? Icon(icon, size: 24, color: Colors.black)
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}