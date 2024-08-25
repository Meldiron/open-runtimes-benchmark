import 'dart:async';
import 'package:faker/faker.dart';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';

final dio = Dio();

Future<dynamic> main(final context) async {
    if(context.req.path == '/ping') {
        return context.res.text("Pong");
    }

    if(context.req.path == '/faker') {
        var faker = new Faker();
        var fullName = faker.person.name();

        return context.res.text("<body><h1 id=\"title\">" + fullName + "</h1></body>");
    }

    final response = await dio.get('http://127.0.0.1:3000/faker');
    final dom = parse(response.data);

    final element = dom.querySelector("#title");

    if(element == null) {
        return context.res.text("Fail", 500);
    }

    final data = element.text;

    return context.res.text(data);
}