<?php

require_once 'vendor/autoload.php';

return function($context) {
    if($context->req->path === '/ping') {
        return $context->res->text('Pong');
    }

    if($context->req->path === '/faker') {
        $faker = Faker\Factory::create();
        $fullName = $faker->name();

        return $context->res->text('<body><h1 id="title">' . $fullName . '</h1></body>');
    }

    $client = new GuzzleHttp\Client();
    $response = $client->request('GET', 'http://127.0.0.1:3000/faker');

    $dom = new PHPHtmlParser\Dom();
    $dom->loadStr($response->getBody());

    $data = $dom->find('#title')[0]->text;

    return $context->res->text($data);
};
