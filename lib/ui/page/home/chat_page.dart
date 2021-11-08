import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_app/models/message_model.dart';
import 'package:shamo_app/provider/auth_provider.dart';
import 'package:shamo_app/provider/page_provider.dart';
import 'package:shamo_app/services/message_service.dart';
import 'package:shamo_app/shared/theme.dart';
import 'package:shamo_app/ui/widget/custom_chat_widget.dart';
import 'package:shamo_app/ui/widget/custom_header_widget.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget contentNoMessage() {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 200),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/icon_headset.png',
                  ),
                ),
              ),
            ),
            Text(
              'Opss no message yet?',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'You have never done a transaction',
              style: blackTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 44,
              width: 152,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  pageProvider.setCurrentIndex = 0;
                },
                child: Text(
                  'Explore Store',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return StreamBuilder<List<MessageModel>>(
          stream: MessageService()
              .getMessagesByUserId(userId: authProvider.user.id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data.length == 0) {
                return contentNoMessage();
              }
              return Column(
                children: [CustomChatWidget(snapshot.data.last.message)],
              );
            } else if (!snapshot.hasData) {
              return contentNoMessage();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          });
    }

    return ListView(
      children: [
        CustomHeader(text: 'Message Support'),
        SizedBox(height: 21),
        content(),
      ],
    );
  }
}
