import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:telegram_bot_on_dart/command_text.dart';
import 'dart:io' show Platform;

Future<void> main() async {
  final envVars = Platform.environment;
  var TOKEN = '5468422760:AAHQL1yzEYRhZhfHbJhiCq1ghLGYq59G4L4';
  final username = (await Telegram(envVars[TOKEN]!).getMe()).username;
  var teledart = TeleDart(envVars[TOKEN]!, Event(username!));

  teledart.start();

  teledart.onCommand('start')
      .listen((message) => message.reply(startMessage));

  teledart.onCommand('info_113').listen((message) => message.reply(info_113));
  teledart.onCommand('info_124').listen((message) => message.reply(info_124));
  teledart.onCommand('info_124').listen((message) => message.reply(info_124));

  teledart
      .onMessage(keyword: '/хочу_в_палитех')
      .where((message) => message.text?.contains('хочу_в_палитех') ?? false)
      .listen((message) => message.reply(pasha));

}