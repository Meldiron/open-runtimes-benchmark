package handler

import (
	"sync"

	"github.com/open-runtimes/types-for-go/v4/openruntimes"
)

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}
	
	return fibonacci(n-1) + fibonacci(n-2)
}

func Main(Context openruntimes.Context) openruntimes.Response {
    if Context.Req.Path == "/ping" {
        return Context.Res.Text("Pong");
    }

	var wg sync.WaitGroup
	
	for i := 0; i < 10; i++ {
		wg.Add(1)

		go func() {
			defer wg.Done()
			fibonacci(30)
		}()
	}

	wg.Wait()

	return Context.Res.Text("OK")
}