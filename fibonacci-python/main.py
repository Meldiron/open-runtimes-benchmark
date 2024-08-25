def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)

def main(context):
    if context.req.path == "/ping":
        return context.res.text("Pong")

    for i in range(11):
        fibonacci(30)

    return context.res.text("OK")
