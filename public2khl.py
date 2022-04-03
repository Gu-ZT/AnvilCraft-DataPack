import asyncio
import sys
from os import environ

from khl import Bot, MessageTypes
from khl.card import CardMessage, Card, Module


def up(token: str, channel: str, file: str):
    bot = Bot(token=token)

    async def upload(_channel: str, _file: str):
        msg = CardMessage(Card(Module.File(type="file", src=await bot.create_asset(_file), title=_file[2:])))
        await bot.send(content=msg, target=await bot.fetch_public_channel(_channel),
                       type=MessageTypes.CARD)
    asyncio.get_event_loop().run_until_complete(upload(channel, file))


if __name__ == '__main__':
    args = sys.argv
    BOT_TOKEN = environ["BOT_TOKEN"]
    CHANNEL_ID = environ["CHANNEL_ID"]
    up(BOT_TOKEN, CHANNEL_ID, args[1])
