// import 'package:flutter/material.dart';
//
//
// class FilterWidget extends StatefulWidget {
//   @override
//   _FilterWidgetState createState() => _FilterWidgetState();
// }
//
// class _FilterWidgetState extends State<FilterWidget> {
//   String _selectedDuration = 'Last 14 days';
//   String _selectedFilter = 'All';
//   List<String> _durationOptions = ['Last 7 days', 'Last 14 days', 'Last 30 days', 'All time'];
//   List<String> _filterOptions = ['All', 'Open', 'Closed', 'Resolved'];
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedDuration,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _selectedDuration = newValue!;
//                       });
//                     },
//                     items: _durationOptions.map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     icon: const Icon(Icons.keyboard_arrow_down_outlined),
//                     iconSize: 24,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 16.0),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedFilter,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _selectedFilter = newValue!;
//                       });
//                     },
//                     items: _filterOptions.map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                     icon: const Icon(Icons.keyboard_arrow_down_outlined),
//                     iconSize: 24,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           // Rest of your UI code
//         ],
//     );
//   }
// }




import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  String _selectedDuration = 'Last 14 days';
  String _selectedFilter = 'All';
  List<String> _durationOptions = ['Last 7 days', 'Last 14 days', 'Last 30 days', 'All time'];
  List<String> _filterOptions = ['All', 'Open', 'Closed', 'Resolved'];

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedDuration,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedDuration = newValue!;
                });
              },
              items: _durationOptions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 14, color: Colors.blueGrey),),
                );
              }).toList(),
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              iconSize: 24,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5), // Adjust padding
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedFilter,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFilter = newValue!;
                });
              },
              items: _filterOptions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      // const Icon(Icons.candlestick_chart),
                      Text(value, style: TextStyle(fontSize: 14, color: Colors.blueGrey),),
                    ],
                  ),
                );
              }).toList(),
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              iconSize: 24,
              decoration: const InputDecoration(
                border: InputBorder.none, // Remove underline
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical:5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
