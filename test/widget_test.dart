// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newsupdate/screens/profilescreen/addnews.dart';

void main() {
  testWidgets('Create a news outlet',(WidgetTester tester) async{
    final addNewsTitle = find.byKey(const ValueKey('addNewsTitle'));
    final addShortDescription = find.byKey(const ValueKey('addShortDescription'));
    final addNewsContent = find.byKey(const ValueKey('addNewsContent'));
    final addButton = find.byKey(const ValueKey('addButton'));
    
    await tester.pumpWidget(const MaterialApp(home: AddNewsPage()));
    await tester.enterText(addNewsTitle, 'Test news title');
    await tester.enterText(addShortDescription, 'Test short description');
    await tester.enterText(addNewsContent, 'Test news content');
    await tester.tap(addButton);
    await tester.pump();


    expect(find.text('Test news title'), findsOneWidget);
    expect(find.text('Test short description'), findsOneWidget);
    expect(find.text('Test news content'), findsOneWidget);
    // tester.enterText(finder, text)
  });
}
