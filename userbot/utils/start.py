from telethon import Button

from userbot import BOTLOG, BOTLOG_CHATID, INLINE_PIC, LOGS, tgbot


async def startupmessage(tgbot, INLINE_PIC):
    """
    Start up message in telegram logger group
    """
    try:
        if BOTLOG:
            await tgbot.send_file(
                BOTLOG_CHATID,
                INLINE_PIC,
                caption="✨ **ALBY-Userbot Berhasil Diaktifkan**!!\n━━━━━━━━━━━━━━━\n➠ **Userbot Version** - 9.0@ALBY-Userbot\n➠ **Ketik** `.ping` **Untuk Mengecek Bot**\n➠ **Ketik** `.help` **Untuk Melihat Informasi Module**\n━━━━━━━━━━━\n➠ **Powered By:** @ruangprojects ",
                buttons=[(Button.url("ɢʀᴏᴜᴘ ꜱᴜᴘᴘᴏʀᴛ", "https://t.me/ruangdiskusikami"),)],
            )
    except Exception as e:
        LOGS.error(e)
        return None
