FROM punyaalby/alby-userbot:buster

RUN git clone -b ALBY-Userbot https://github.com/PunyaArsya/hiopppp /home/ALBY-Userbot/ \
    && chmod 777 /home/ALBY-Userbot \
    && mkdir /home/ALBY-Userbot/bin/
WORKDIR /home/ALBY-Userbot/

COPY ./sample_config.env ./config.env* /home/ALBY-Userbot/
RUN pip install -r requirements.txt

CMD ["python3", "-m", "userbot"]
