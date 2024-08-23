package handler

import (
    "bytes"

	"github.com/open-runtimes/types-for-go/v4/openruntimes"
    "github.com/go-resty/resty/v2"
    "github.com/go-faker/faker/v4"
    "github.com/PuerkitoBio/goquery"
)

type FakerTags struct {
    Name    string   `faker:"name"`
}

func Main(Context openruntimes.Context) openruntimes.Response {
    if Context.Req.Path == "/ping" {
        return Context.Res.Text("Pong");
    }

    if Context.Req.Path == "/faker" {
        fakeData := FakerTags{}
        err := faker.FakeData(&fakeData)
        if err != nil {
            return Context.Res.Text(err.Error(), Context.Res.WithStatusCode(500))
        }

        return Context.Res.Text("<body><h1 id=\"title\">" + fakeData.Name + "</h1></body>");
    }

    client := resty.New().SetCloseConnection(true)
    resp, err := client.R().Get("http://127.0.0.1:3000/faker")

    if err != nil {
        return Context.Res.Text(err.Error(), Context.Res.WithStatusCode(500))
    }

    reader := bytes.NewReader(resp.Body())
    doc, err := goquery.NewDocumentFromReader(reader)
    if err != nil {
        return Context.Res.Text(err.Error(), Context.Res.WithStatusCode(500))
    }

    data := doc.Find("#title").Text()
	return Context.Res.Text(data);
}