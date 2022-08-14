# NoneBot

---

A QQ robot which can be deployed localhost or server

## How to start

1. Download the code with the `download zip` button or use the command `git clone https://github.com/neoluxis/qqbot`
2. Enter the source code folder with the cammand `cd qqbot`
3. Check the files. the file should be as follows:
   ```bash
   data/
   src/
   .env
   .env.dev
   .env.prod
   .gitignore
   bot.py
   docker-compose.yml
   Dockerfile
   pyproject.toml
   README.md
   requirements.txt
   ```
   But among these files only the following are vital
   ```bash
   data/ # 运行必要的文件
   src/ # 插件等文件放在这里
   .env # 环境配置（开发环境或生产环境）
   .env.dev # 开发环境配置
   .env.prod # 生产环境配置
   bot.py # 主程序
   pyproject.toml # python文件（机器人）插件加载文件
   requirements.txt # 插件列表，安装插件
   ```
4. Run command `pip install -r requirements.txt` (On Linux, use `pip3` command rather than pip) to install the requirements
5. Use python to run `bot.py` file
   `python bot.py` (On Linux, use `python3` command rather than python)
6. You can now open the site the TTY outputted in browser (http://127.0.0.1:57526/go-cqhttp/)
   Or you can use the on-click script to deploy the bot. Just run command `./start.bat` on Windows or `./start.sh` on Linux/Mac.

## How to login

You need to visit the `https://127.0.0.1:57526/go-cqhttp/` to login
Then you will see this page![](https://images.weserv.nl/?url=https://article.biliimg.com/bfs/article/a3c1c9023311c3395d7eb7d7b35a0c3cd1f9cbcb.png)
You can add an account via this page, just click <kbd>Add Account</kbd>. Then you will see this![](https://images.weserv.nl/?url=https://article.biliimg.com/bfs/article/5692873773b769ab6bb806161e6a2afd534c2bda.png)
Just input your QQ id and select your device type.
We recommend you to leave the password blank, or you will face the challenge to get your password leaked. Leave the password blank, and you need to scan the QR code to login(Be assured, this QR code will not save your password)
**After you add your account, you may restart the bot to run the bot for your account**

---

## 配置帮助（中文）

1. 打开`.env` 文件配置环境，建议设置成生产环境 prod
   ```bash
   ENVIRONMENT=prod
   # 选择开发环境
    # dev：开发环境，配置文件为.env.dev
    # prod：开发环境，配置文件为.env.prod
   ```
2. 打开`.env.prod` 文件
   ```bash
   HOST=127.0.0.1 # 设置主机，保持默认就好，可以修改
   PORT=57526 #设置端口，1000~60000之间随机数即可
   SUPERUSERS=["xxxxxxxxxxxx"] # 设置管理员QQ号
   NICKNAME=["QQ Bot"] # 设置qq机器人名称
   COMMAND_START=["/","."] #设置命令开始字符。不设置，可以直接输入命令；设置后，如实例，需要先输入/或.之后才是命令
   ```
3. 运行部署脚本或命令行部署
   命令行部署：
   ```bash
   pip3 install -r requirements.txt
   python3 bot.py
   ```
   脚本部署：
   Windows `./start.bat`
   Linux `./start.sh`

---
## Documentation

See [Docs](https://v2.nonebot.dev/)

