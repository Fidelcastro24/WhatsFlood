FROM fusuf/whatsasena:latest

RUN git clone https://github.com/phaticusthiccy/WhatsFlood /root/WhatsFlood
WORKDIR /root/WhatsFlood/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "run.js"]
