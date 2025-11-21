FROM public.ecr.aws/docker/library/node:alpine    # ← THIS LINE KILLS 429 FOREVER

WORKDIR /app
RUN echo 'const express = require("express"); \
const app = express(); \
app.get("*", (req,res) => res.send("<div style=\"padding:100px;background:#00d26a;color:white;text-align:center;font-family:system-ui\"><h1>App6 IS 100% LIVE!</h1><p>You are at: " + req.path + "</p></div>")); \
app.listen(3000, "0.0.0.0", () => console.log("App6 running on 3000")); \
' > server.js

RUN npm init -y && npm install express --silent

EXPOSE 3000
CMD ["node", "server.js"]
