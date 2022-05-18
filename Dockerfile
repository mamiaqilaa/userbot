FROM punyaalby/alby-userbot:buster

RUN git clone -b ALBY-Userbot https://github.com/PunyaArsya/hiopppp /home/ALBY-Userbot/ \
    && chmod 777 /home/ALBY-Userbot \
    && mkdir /home/ALBY-Userbot/bin/

COPY ./sample_config.env ./config.env* /home/ALBY-Userbot/

WORKDIR /home/ALBY-Userbot/

CMD ["python3", "-m", "userbot"]
