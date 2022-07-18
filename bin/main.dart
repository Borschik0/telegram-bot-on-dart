import 'dart:io';

import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:telegram_bot_on_dart/command_text.dart';

Future<void> main() async {

  var teledart = TeleDart(Telegram(Platform.environment['TOKEN']), Event());

  teledart.start().then((me) => print('${me.username} is initialised'));

  teledart
      .onMessage(keyword: 'Fight for freedom')
      .listen((message) => message.reply('Stand with Hong Kong'));

  var TOKEN = '5468422760:AAHQL1yzEYRhZhfHbJhiCq1ghLGYq59G4L4';

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