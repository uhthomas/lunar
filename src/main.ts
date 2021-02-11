import Koa from "koa";
import program from "commander";

async function main() {
  program.option("-p, --port <number>", "listen port", "8080");

  program.parse(process.argv);

  const options = program.opts();

  const app = new Koa();
  app.use(async (ctx) => {
    ctx.body = "Hello, world!";
  });
  app.listen(options.port);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
