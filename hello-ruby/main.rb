def main(context)
    if context.req.path == '/ping'
        return context.res.text('Pong')
    end

    return context.res.text('Hello')
end