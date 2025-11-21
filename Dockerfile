FROM public.ecr.aws/docker/library/node:alpine
WORKDIR /app
RUN echo 'const express = require("express"); \
const app = express(); \
app.get("*", (req,res) => res.send("<div style=\"padding:120px;background:#00d26a;color:white;text-align:center;font-family:system-ui\"><h1>'$app' IS 100% LIVE!</h1><p>Path: " + req.path + "</p></div>")); \
app.listen(3000, "0.0.0.0");' > server.js
RUN npm init -y && npm install express --silent
EXPOSE 3000
CMD ["node", "server.js"]
