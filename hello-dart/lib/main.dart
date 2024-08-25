import 'dart:async';

Future<dynamic> main(final context) async {
    if(context.req.path == '/ping') {
        return context.res.text("Pong");
    }

    return context.res.text("Hello");
}