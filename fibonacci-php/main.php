<?php

if(!\function_exists('fibonacci')) {
    function fibonacci($n) {
        if ($n <= 1) {
            return $n;
        } else {
            return fibonacci($n - 1) + fibonacci($n - 2);
        }
    }
}

return function($context) {

    if($context->req->path === '/ping') {
        return $context->res->text('Pong');
    }


    for($i = 0; $i <= 10; $i++) {
        fibonacci(30);
    }

    return $context->res->text('OK');
};
