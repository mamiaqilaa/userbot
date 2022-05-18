FROM punyaalby/alby-userbot:buster

RUN git clone -b ALBY-Userbot https://github.com/mamiaqilaa/userbot /home/ALBY-Userbot/ \
    && chmod 777 /home/ALBY-Userbot \
    && mkdir /home/ALBY-Userbot/bin/
WORKDIR /home/ALBY-Userbot/

RUN pip3 install -r https://raw.githubusercontent.com/mamiaqilaa/userbot/ALBY-Userbot/requirements.txt

CMD ["python3", "-m", "userbot"]
