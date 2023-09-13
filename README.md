<h1 align="center">
  <a href="https://github.com/AvinashReddy3108/spicetify-tui">
    <img src="docs/images/logo.png" alt="Logo" width="128" height="128">
  </a>
</h1>

<div align="center">
  spicetify-tui
  <br />
  <a href="#about"><strong>Explore the screenshots »</strong></a>
  <br />
  <br />
  <a href="https://github.com/AvinashReddy3108/spicetify-tui/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/AvinashReddy3108/spicetify-tui/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  .
  <a href="https://github.com/AvinashReddy3108/spicetify-tui/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask a Question</a>
</div>

<div align="center">
<br />

[![Project license](https://img.shields.io/github/license/AvinashReddy3108/spicetify-tui.svg?style=flat-square)](LICENSE)

[![Pull Requests welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg?style=flat-square)](https://github.com/AvinashReddy3108/spicetify-tui/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)
[![code with love by AvinashReddy3108](https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%99%A5%20by-AvinashReddy3108-ff1414.svg?style=flat-square)](https://github.com/AvinashReddy3108)

</div>

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Customization](#customization)
- [Roadmap](#roadmap)
- [Support](#support)
- [Project assistance](#project-assistance)
- [Contributing](#contributing)
- [Authors & contributors](#authors--contributors)
- [Security](#security)
- [License](#license)
- [Acknowledgements](#acknowledgements)

</details>

---

## About

A [@spicetify](https://github.com/spicetify) theme that aims to mimic the look of [spotify-tui](https://github.com/Rigellute/spotify-tui).

<details>
<summary>Screenshots</summary>

<div align="center">
<br>

| <img src="docs/images/screenshots/theme_preview/Spotify.png" title="Spotify" width="100%"> | <img src="docs/images/screenshots/theme_preview/Spicetify.png" title="Spicetify" width="100%"> | <img src="docs/images/screenshots/theme_preview/Dracula.png" title="Dracula" width="100%"> |
|:---------------------------------------------------------------------:|:---------------------------------------------------------------------:|:---------------------------------------------------------------------:|
|                                Spotify                                |                               Spicetify                               |                                Dracula                                |
| <img src="docs/images/screenshots/theme_preview/CatppuccinMocha.png" title="Catppuccin Mocha" width="100%"> | <img src="docs/images/screenshots/theme_preview/CatppuccinMacchiato.png" title="Catppuccin Macchiato" width="100%"> | <img src="docs/images/screenshots/theme_preview/CatppuccinLatte.png" title="Catppuccin Latte" width="100%"> |
|                            Catppuccin Mocha                           |                          Catppuccin Macchiato                         |                            Catppuccin Latte                           |
| <img src="docs/images/screenshots/theme_preview/Gruvbox.png" title="Gruvbox" width="100%"> | <img src="docs/images/screenshots/theme_preview/Kanagawa.png" title="Kanagawa" width="100%"> | <img src="docs/images/screenshots/theme_preview/Nord.png" title="Nord" width="100%"> |
|                                Gruvbox                                |                                Kanagawa                               |                                  Nord                                 |
| <img src="docs/images/screenshots/theme_preview/Rigel.png" title="Rigel" width="100%"> | <img src="docs/images/screenshots/theme_preview/RosePine.png" title="Rose Pine" width="100%"> | <img src="docs/images/screenshots/theme_preview/RosePineMoon.png" title="Rose Pine Moon" width="100%"> |
|                                 Rigel                                 |                               Rose Pine                               |                             Rose Pine Moon                            |
| <img src="docs/images/screenshots/theme_preview/Solarized.png" title="Solarized" width="100%"> | <img src="docs/images/screenshots/theme_preview/TokyoNight.png" title="Tokyo Night" width="100%"> | <img src="docs/images/screenshots/theme_preview/TokyoNightStorm.png" title="Tokyo Night Storm" width="100%"> |
|                               Solarized                               |                              Tokyo Night                              |                           Tokyo Night Storm                           |

</div>

</details>

## Getting Started

### Prerequisites

- Spotify Desktop: [Windows](https://www.spotify.com/download/windows) | [Linux](https://www.spotify.com/download/linux)
- Spicetify: [Installation](https://spicetify.app/docs/advanced-usage/installation) -> [Set up for first time use](https://spicetify.app/docs/advanced-usage/command-line-interface)

### Installation

<details open="open">
<summary>Automated installation</summary>
<br>

For Windows (Powershell):

```ps1
iwr -useb 'https://raw.githubusercontent.com/AvinashReddy3108/spicetify-tui/master/install.ps1' | iex
```

For Linux/macOS (Bash):

```sh
curl -fsSL 'https://raw.githubusercontent.com/AvinashReddy3108/spicetify-tui/master/install.sh' | sh
```
</details>

Add the following to your `config-xpui.ini` file. Details as to why are explained [here](https://github.com/JulienMaille/spicetify-dynamic-theme#important).

```ini
[Patch]
xpui.js_find_8008 = ,(\w+=)56,
xpui.js_repl_8008 = ,${1}32,
```

## Customization

<details>
<summary>Display Images</summary>
<br>

Open `user.css` with a code editor like Notepad++/VSCode, and under the `:root`:

```css
--display-card-image: block;
--display-coverart-image: block;
--display-header-image: block;
--display-library-image: block;
--display-tracklist-image: block;
```

![Result (with images)](docs/images/screenshots/withimg.png)

</details>

<details>
<summary>Remove Images (for the realistic TUI look)</summary>
<br>

Open `user.css` with a code editor like Notepad++/VSCode, and under the `:root`:

```css
--display-card-image: none;
--display-coverart-image: none;
--display-header-image: none;
--display-library-image: none;
--display-tracklist-image: none;
```

![Result (without images)](docs/images/screenshots/withoutimg.png)

</details>

<details>
<summary>[Windows] Make the window controls' background match with the topbar background</summary>
<br>

Open `user.css` with a code editor like Notepad++/VSCode, and append this snippet:

```css
/* transparent window controls background */
body::after {
    content: "";
    position: absolute;
    right: 0;
    z-index: 999;
    backdrop-filter: brightness(2.12);
    /* page zoom [ctrl][+] or [ctrl][-]
       edit width and height accordingly
        69%  = 194px 45px
        76%  = 177px 40.5px
        83%  = 162px 37.5px
        91%  = 148px 34px
        100% = 135px 31px (default)
        110% = 123px 28.5px
    */
    width: 135px;
    height: 31px;
}
```

![Result](docs/images/screenshots/winctrl.png)

</details>

## Roadmap

See the [open issues](https://github.com/AvinashReddy3108/spicetify-tui/issues) for a list of proposed features (and known issues).

- [Top Feature Requests](https://github.com/AvinashReddy3108/spicetify-tui/issues?q=label%3Aenhancement+is%3Aopen+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Top Bugs](https://github.com/AvinashReddy3108/spicetify-tui/issues?q=is%3Aissue+is%3Aopen+label%3Abug+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Newest Bugs](https://github.com/AvinashReddy3108/spicetify-tui/issues?q=is%3Aopen+is%3Aissue+label%3Abug)

## Support

Reach out to the maintainer at one of the following places:

- [GitHub issues](https://github.com/AvinashReddy3108/spicetify-tui/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)
- Contact options listed on [this GitHub profile](https://github.com/AvinashReddy3108)

## Project assistance

If you want to say **thank you** or/and support active development of spicetify-tui:

- Add a [GitHub Star](https://github.com/AvinashReddy3108/spicetify-tui) to the project.
- Write interesting articles about the project on [Dev.to](https://dev.to/), [Medium](https://medium.com/) or your personal blog.

Together, we can make spicetify-tui **better**!

## Contributing

First off, thanks for taking the time to contribute! Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are **greatly appreciated**.


Please read [our contribution guidelines](docs/CONTRIBUTING.md), and thank you for being involved!

## Authors & contributors

The original setup of this repository is by [Avinash Reddy](https://github.com/AvinashReddy3108).

For a full list of all authors and contributors, see [the contributors page](https://github.com/AvinashReddy3108/spicetify-tui/contributors).

## Security

spicetify-tui follows good practices of security (where applicable), but 100% security cannot be assured.
spicetify-tui is provided **"as is"** without any **warranty**. Use at your own risk.

_For more information and to report security issues, please refer to our [security documentation](docs/SECURITY.md)._

## License

This project is licensed under the **MIT license**.

See [LICENSE](LICENSE) for more information.

## Acknowledgements

- [text theme for spicetify](https://github.com/spicetify/spicetify-themes/tree/master/text), by [@darkthemer](https://github.com/darkthemer): Initial bringup
- [Amazing GitHub Template](https://github.com/dec0dOS/amazing-github-template), by [@dec0dOS](https://github.com/dec0dOS): README.md template (and supporting files)
