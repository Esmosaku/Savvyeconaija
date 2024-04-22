 
// import 'dart:async';
// import 'package:econaija/screens/dashboard.dart';
// import 'package:econaija/widgets/chatmessage.dart';
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final List<ChatMessage> _messages = [];
//   ChatGPT? chatGPT;
//   late StreamSubscription _subscription;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _subscription?.cancel();
//     super.dispose();
//   }
//   void _sendMessage() {
//     ChatMessage _message = ChatMessage(text: _controller.text, sender: 'user');
//     setState(() {
//       _messages.insert(0, _message);
//     });
//     _controller.clear();
//   }

//   Widget _buildComposer() {
//     return Row(
//       children: <Widget>[
//         Expanded(
//             child: TextField(
//           onSubmitted: (value) => _sendMessage(),
//           controller: _controller,
//           decoration: InputDecoration.collapsed(hintText: 'Send a Message'),
//         )),
//         IconButton(onPressed: () => _sendMessage(), icon: Icon(Icons.send))
//       ],
//     ).px16();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: BackButton(
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => const Dashboard()),
//           ),
//         ),
//         actions: [
//           ClipOval(
//             child: Image.asset(
//               'assets/images/usericon.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(
//             width: 5,
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Flexible(
//                 child: ListView.builder(
//               reverse: true,
//               padding: Vx.m8,
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return _messages[index];
//               },
//             )),
//             Container(
//               decoration: BoxDecoration(
//                 color: context.cardColor,
//               ),
//               child: _buildComposer(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
