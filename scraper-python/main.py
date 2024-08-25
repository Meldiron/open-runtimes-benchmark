import htmlparse
import httpx
from faker import Faker

fake = Faker()

def main(context):
    if context.req.path == "/ping":
        return context.res.text("Pong")

    if context.req.path == "/faker":
        fullName = fake.name()
        return context.res.text("<body><h1 id=\"title\">" + fullName + "</h1></body>")

    response = httpx.get('http://127.0.0.1:3000/faker')
    dom = htmlparse.parse_html(response.text)

    data = dom.children[0].children[0].text

    return context.res.text(data)
