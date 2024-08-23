import * as cheerio from 'cheerio';
import { faker } from '@faker-js/faker';
import axios from "axios";

export default async (context) => {
    if(context.req.path === '/ping') {
        return context.res.text("Pong");
    }

    if(context.req.path === '/faker') {
        const fullName = faker.person.fullName();
        return context.res.text(`<body><h1 id="title">${fullName}</h1></body>`);
    }

    const response = await axios.get('http://127.0.0.1:3000/faker');
    const $ = cheerio.load(response.data);

    const data = $('#title').text();

    return context.res.text(data);
};