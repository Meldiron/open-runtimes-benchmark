def fibonacci(n)
    if n <= 1
        return n
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

def main(context)
    if context.req.path == '/ping'
        return context.res.text('Pong')
    end

    for i in 1..11
        fibonacci(30)
    end

    return context.res.text('OK')
end