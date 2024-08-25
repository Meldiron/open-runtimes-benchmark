require 'oga'
require 'faker'
require 'faraday'

def main(context)
    if context.req.path == '/ping'
        return context.res.text('Pong')
    end

    if context.req.path == '/faker'
        fullName = Faker::Name.name
        return context.res.text("<body><h1 id=\"title\">" + fullName + "</h1></body>")
    end

    response = Faraday.get('http://127.0.0.1:3000/faker')
    dom = Oga.parse_html(response.body)

    dom.xpath('body/h1').each do |title|
        data = title.text
        return context.res.text(data)
    end

    return context.res.text("Fail", 500)
end