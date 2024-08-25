using System.Text.Json;

namespace DotNetRuntime {
    public class Handler {
        public async Task<RuntimeOutput> Main(RuntimeContext context)
        {
            if(context.Req.Path == "/ping") {
                return context.Res.Text("Pong");
            }

            for(int i = 0; i <= 10; i++)
            {
                fibonacci(30);
            }

            return context.Res.Text("OK");
        }

        public int fibonacci(int n)
        {
            if(n <= 1)
            {
                return n;
            } else
            {
                return fibonacci(n - 1) + fibonacci(n - 2);
            }
        }
    }
}