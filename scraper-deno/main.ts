import { faker } from "https://deno.land/x/deno_faker@v1.0.3/mod.ts";
import { DOMParser } from "jsr:@b-fuze/deno-dom@0.1.47";
import axiod from "https://deno.land/x/axiod/mod.ts";

export default async (context) => {
    if(context.req.path === '/ping') {
        return context.res.text("Pong");
    }

    if(context.req.path === '/faker') {
        const fullName = faker.name.findName();
        return context.res.text(`<body><h1 id="title">${fullName}</h1></body>`);
    }

    const response = await axiod.get('http://127.0.0.1:3000/faker');

    const dom = new DOMParser().parseFromString(response.data, "text/html");

    const data = dom.querySelector('#title').textContent;

    return context.res.text(data);
};