FROM punyaalby/alby-userbot:buster

RUN git clone -b ALBY-Userbot https://github.com/PunyaAlby/ALBY-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
