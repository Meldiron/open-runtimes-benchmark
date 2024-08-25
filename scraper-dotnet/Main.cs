using System.Text.Json;
using Faker;
using RestSharp;
using HtmlAgilityPack;


namespace DotNetRuntime {
    public class Handler {
        public async Task<RuntimeOutput> Main(RuntimeContext context)
        {
            if(context.Req.Path == "/ping") {
                return context.Res.Text("Pong");
            }

            if(context.Req.Path == "/faker") {
                String fullName = Faker.Name.FullName();
                return context.Res.Text("<body><h1 id=\"title\">" + fullName + "</h1></body>");
            }

            var options = new RestClientOptions("http://127.0.0.1:3000");
            var client = new RestClient(options);
            var request = new RestRequest("faker");
            var response = await client.GetAsync(request);

            var dom = new HtmlDocument();
            dom.LoadHtml(response.Content);

            var data = dom.GetElementbyId("title").InnerText;

            return context.Res.Text(data);
        }
    }
}