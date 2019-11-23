import koa from "koa";
import logger from "koa-logger";

const app = new koa();
const port = 5000;

const hello = ctx => {
    ctx.body = "hello";
};

app.use(logger());
app.use(hello);

app.listen(port, () => {
    console.log(`✅  The server is running at http://localhost:${port}/`);
});
