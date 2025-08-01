import 'package:flutter/material.dart';

import 'chat_screen.dart';

class DynamicCrossAppChat extends StatelessWidget {
  const DynamicCrossAppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cross-App Chat')),
      body: Column(
        children: [
          // Chat with specific user from other app
          ListTile(
            title: const Text('Chat with Customer John'),
            subtitle: const Text('From Customer App'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    currentUserId: 'support_agent_456',
                    currentUserName: 'Support Agent',
                    targetUserId: 'customer_user_123',
                    targetUserName: 'John (Customer)',
                  ),
                ),
              );
            },
          ),
          
          // Chat with multiple users
          ListTile(
            title: Text('Chat with Support Team'),
            subtitle: Text('From Support App'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    currentUserId: 'customer_user_789',
                    currentUserName: 'Jane (Customer)',
                    targetUserId: 'support_agent_101',
                    targetUserName: 'Support Manager',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}