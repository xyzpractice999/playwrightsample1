FROM mcr.microsoft.com/playwright:v1.53.0

WORKDIR /e2e

COPY package.json ./
RUN npm install

COPY . .

RUN npx playwright install-deps

CMD [ "npx","playwright","test","example","--project","chromium" ]