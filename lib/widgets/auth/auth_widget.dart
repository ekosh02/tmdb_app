import 'package:flutter/material.dart';
import 'package:tmdb_app/style/text_styles.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: const [
            _HeaderWidget(),
            _FormWidget(),
          ],
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  final String headerText = 'Login to your account';

  final String descriptionText1 =
      'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.';

  final String descriptionText2 =
      'If you signed up but didn\'t get your verification email, click here to have it resent.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerText, style: TextStyles.title2Semibold),
          const SizedBox(height: 10),
          Text(descriptionText1, style: TextStyles.text1Regular),
          const SizedBox(height: 10),
          Text(descriptionText2, style: TextStyles.text1Regular),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);
  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const textFieldDecaration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      isCollapsed: true,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Username', style: TextStyles.headline1RegularGray),
          SizedBox(height: 8),
          TextField(decoration: textFieldDecaration),
          SizedBox(height: 16),
          Text('Password', style: TextStyles.headline1RegularGray),
          SizedBox(height: 8),
          TextField(decoration: textFieldDecaration),
        ],
      ),
    );
  }
}
