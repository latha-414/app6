FROM public.ecr.aws/docker/library/node:alpine
WORKDIR /app
RUN echo 'const express = require("express"); const app = express(); app.get("*", (req,res) => res.send("<h1>App6 Working</h1>")); app.listen(3000, "0.0.0.0");' > server.js
RUN npm init -y && npm install express
EXPOSE 3000
CMD ["node", "server.js"]

