package handler

import (
	"github.com/open-runtimes/types-for-go/v4/openruntimes"
)

func Main(Context openruntimes.Context) openruntimes.Response {
    if Context.Req.Path == "/ping" {
        return Context.Res.Text("Pong");
    }

	return Context.Res.Text("Hello");
}