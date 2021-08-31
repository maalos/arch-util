import pystray
import os
from PIL import Image

def start_app(app):
    os.system(app + " &")

app_list = [
    # Name       Command
    ('Chromium', 'chromium'),
    ('Nemo',     'nemo'),
    ('st',       'cd; st'),
    ('Discord',  'discord'),
    ('VSCodium', 'codium')
]

def convert_app(app):
    return pystray.MenuItem(app[0], lambda: start_app(app[1]))

menu = tuple(map(convert_app, app_list))

hamburger_menu = Image.open("image.png")
icon = pystray.Icon("Start", hamburger_menu, "Start", menu)
icon.run()
