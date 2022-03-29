import asyncio
import sys
from os import getenv

from khl import Bot, MessageTypes


def up(token: str, channel: str, file: str):
    bot = Bot(token=token)

    async def upload(_channel: str, _file: str):
        await bot.send(content=await bot.create_asset(_file), target=await bot.fetch_public_channel(_channel), type=MessageTypes.FILE)
    asyncio.get_event_loop().run_until_complete(upload(channel, file))


args = sys.argv
up(args[1], args[2], args[3])
