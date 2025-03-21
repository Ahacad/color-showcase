# Color Showcase

A fun and simple Bash script that demonstrates all 256 terminal background colors as solid blocks for improved visual clarity. This project is intended for learning about ANSI escape codes and terminal capabilities.

## Features

- **Visual Grid:** Displays color blocks in a neat grid (8 blocks per row).
- **Compatibility:** Tries using `tput` for setting background colors, falling back to ANSI escape sequences if necessary.
- **Lightweight:** A single, easy-to-read Bash script that works on any terminal supporting 256 colors.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/color-showcase.git
   cd color-showcase

   ```

2. Make the script executable:

```bash
chmod +x show_color_blocks.sh
```

## Usage

Simply run the script:

```bash
./show_color_blocks.sh
```

You should see a grid of colored blocks representing all 256 background colors available in your terminal.

## License

MIT License.
