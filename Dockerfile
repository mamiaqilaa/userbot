FROM punyaalby/alby-userbot:buster

RUN git clone -b ALBY-Userbot https://github.com/PunyaArsya/ALBY-Userbot /home/alby-userbot/ \
    && chmod 777 /home/alby-userbot \
    && mkdir /home/alby-userbot/bin/

CMD [ "bash", "start" ]
