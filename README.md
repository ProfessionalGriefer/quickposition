# Quick Position

QuickPosition is a command-line tool designed to streamline the process of configuring display positions on macOS. Specifically, it allows users to easily move their iPad (used as a secondary display via Sidecar) to either the left or right side of their Mac screen, without the need to manually adjust display settings through the system preferences.

With QuickPosition, three `.app` files are generated in your `/Applications` folder. These can be executed to quickly switch the iPad display position with just one click in Finder.

## Features

- Automates the process of moving an iPad display to the left or right of your Mac screen.
- Activates the iPad as a second monitor with the **sidecar** app
- Saves display configurations in two separate apps: **iPad Left** and **iPad Right**.
- No need to open display settings manually – simply run the apps to apply your preferred display arrangement.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/quickposition.git
   ```

2. Navigate to the QuickPosition directory:

   ```bash
   cd quickposition
   ```

3. Make the `quickposition.sh` script executable:

   ```bash
   chmod +x quickposition.sh
   ```

4. Run the script to generate the display configuration apps:

   ```bash
   ./quickposition.sh
   ```

## How It Works

- The script first prompts you to confirm whether you'd like to proceed with creating the display positioning apps.
- It opens the display settings for you to configure the iPad on the **left** side.
- After configuration, it saves the display settings into the app **iPad Left**.
- The script then reopens the display settings for you to configure the iPad on the **right** side.
- It saves this configuration into the app **iPad Right**.
- Both apps are copied to the `/Applications` folder for easy access.

## Usage

Once installed, simply open Finder and run the corresponding `.app` file from your `/Applications` folder to reposition your iPad:

- **iPad Left.app**: Positions your iPad display on the left of your Mac.
- **iPad Right.app**: Positions your iPad display on the right of your Mac.

You can also customize these display positions by editing the `quickposition.sh` script and updating the display settings commands as needed.

## Troubleshooting

- It is important that the name of your iPad is the same name as the one you entered into the script. It is case sensitive.
- "Vincent's iPad" is not the same as "Vincent`s iPad": Be careful with special characters
- You should be automatically prompted to grant Accessibility permissions. If not, manually enable it under `System Settings > Privacy and Security > Accessibility`

## Requirements

- macOS with Sidecar enabled.
- [displayplacer](https://github.com/jakehilborn/displayplacer) must be installed via Homebrew:

  ```bash
  brew install displayplacer
  ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit a pull request or open an issue if you find any bugs or have suggestions for new features!

## Acknowledgements

- [displayplacer](https://github.com/jakehilborn/displayplacer) for the excellent tool to manage display configurations on macOS.

---

Found my add-on useful? Consider buying me a coffee!

<a href="https://www.buymeacoffee.com/vincentnahn"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=☕&slug=vincentnahn&button_colour=800020&font_colour=ffffff&font_family=Inter&outline_colour=ffffff&coffee_colour=FFDD00" /></a>
