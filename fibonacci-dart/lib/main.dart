import 'dart:async';

int fibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

Future<dynamic> main(final context) async {
    if(context.req.path == '/ping') {
        return context.res.text("Pong");
    }

    for (int i = 0; i <= 10; i++) {
        fibonacci(30);
    }


    return context.res.text("OK");
}