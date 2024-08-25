using System.Text.Json;

namespace DotNetRuntime {
    public class Handler {
        public async Task<RuntimeOutput> Main(RuntimeContext context)
        {
            if(context.Req.Path == "/ping") {
                return context.Res.Text("Pong");
            }

            return context.Res.Text("Hello");
        }
    }
}