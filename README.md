# Minecraft-AFK-Bot

A simple Node.js bot that automates “away from keyboard” (AFK) activity in Minecraft servers — ideal for keeping servers online 24/7 ([Aternos](https://aternos.org/),etc.) or looting/farming while you’re away.

## 🚀 Features

* Connects to a Minecraft server and performs periodic actions to keep the character “active”.
* Configurable delay/timer settings.
* Lightweight and easy to run in the background.

## 🐳 Deploy Now with Docker!

```bash
docker run -d \
  -e SERVER_HOST="example.com" \
  -e SERVER_PORT="25565" \
  -e BOT_USERNAME="AFKBot" \
  -e BOT_CHUNK="2" \
  -e MC_VERSION="false" \
  ninjayubaraj/minecraft-afk-bot:latest
```

## 🧰 Getting Started

### Prerequisites

* Node.js (version 14 or later recommended)
* A Minecraft Java-Edition Server (Cracked).

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Ninja-Yubaraj/Minecraft-AFK-Bot.git  
   cd Minecraft-AFK-Bot  
   ```
2. Install dependencies:

   ```bash
   npm install  
   ```
3. Configure the bot:

   * Open `config.json` and fill in your server address, port, username, password (if needed), delay settings, etc.

4. Run the bot:

   ```bash
   node bot.js  
   ```

   The bot will connect and begin its AFK loop of actions.

## 🧩 How It Works

* On startup, the bot connects to the server via a Minecraft protocol library (e.g., `minecraft-protocol` or similar).
* It executes a configurable action (e.g., minor movement, chat ping, etc) every `delayBetweenActionsMs` milliseconds to keep the session alive.
* You can customize the behaviour in `bot.js` to suit your server’s AFK rules (for example, bouncing between two positions, sending periodic chat messages, farming tasks, etc).

## ⚠️ Important Notes & Limitations

* Use this bot only on servers where AFK automation is **allowed** by the rules. Many servers ban automated AFK behaviour.
* The bot is provided *as-is*. It may not bypass anti-AFK detection or server protections. Use responsibly.
* Make sure your account is secured — using your main account may carry risk if the server flags automation.

## 🛠️ Customization & Extending

* Modify `bot.js` to change the action sequence (for example: walk → turn → jump → chat).
* Add new behaviours: e.g., auto-farm a block, collect items, deposit loot, etc.
* Integrate with a scheduler or cron job to run at specific times.
* Extend logging or monitoring (e.g., send a message when the bot disconnects).

## ✅ Development & Contributing

* Contributions are welcome!
* If you add new features, please open a pull request with a clear description of what you’ve added/changed.
* Please keep code style consistent with existing files.
* Add tests or usage examples if you’re implementing more advanced behaviour.

## 🙋 Support & Contact

For issues or improvements, you can open an [Issue](https://github.com/Ninja-Yubaraj/Minecraft-AFK-Bot/issues) in this repository.
You can also reach me (Yubaraj Sarkar) via GitHub as [Ninja-Yubaraj](https://github.com/Ninja-Yubaraj).
