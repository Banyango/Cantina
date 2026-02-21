# Margarita + Lime + Salt – AI Simplified

The official website for the Margarita + Lime + Salt ecosystem – a powerful platform for reusable prompts and agentic workflows.

## About

Margarita + Lime + Salt is a comprehensive ecosystem designed to simplify AI development:

- **Margarita**: A lightweight templating tool for building reusable prompt and markdown templates
- **Lime**: Enables agentic workflows and advanced AI operations
- **Salt**: Enhances the ecosystem with additional capabilities

## Features

- Modern, responsive web design
- Built with vanilla JavaScript and CSS
- Webpack-based build system
- Optimized for performance and SEO

## Getting Started

### Prerequisites

- Node.js (v14 or higher recommended)
- npm or yarn package manager

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd margarita-website
```

2. Install dependencies:
```bash
npm install
```

### Development

Start the development server with hot reload:

```bash
npm start
```

The site will open automatically in your default browser at `http://localhost:8080`.

### Building for Production

Create an optimized production build:

```bash
npm run build
```

The built files will be output to the `dist/` directory.

## Troubleshooting

### EMFILE: too many open files (macOS)

If you encounter the error `EMFILE: too many open files, watch` when running `npm start`, this is a common issue on macOS where the system limit for open files is too low for webpack's file watcher.

**Solution 1: Webpack Configuration (Already Applied)**

The webpack development configuration has been updated to ignore `node_modules/` from file watching, which should prevent this error in most cases.

**Solution 2: Increase System File Limits**

If you still encounter this issue, you can temporarily increase the system limit:

```bash
# Check your current limit
ulimit -n

# Temporarily increase the limit (for current terminal session only)
ulimit -n 10240

# Then run npm start again
npm start
```

**Solution 3: Permanent Fix**

To make this change permanent, add the following line to your `~/.zshrc` file:

```bash
# Add to ~/.zshrc
ulimit -n 10240
```

Then reload your shell configuration:

```bash
source ~/.zshrc
```

## Project Structure

```
margarita-website/
├── index.html              # Main HTML file
├── css/                    # Stylesheets
│   └── style.css
├── js/                     # JavaScript files
│   ├── app.js
│   └── vendor/
├── img/                    # Image assets
├── favicon.ico             # Favicon
├── icon.png                # App icon (PNG)
├── icon.svg                # App icon (SVG)
├── lime.svg                # Lime logo
├── site.webmanifest        # PWA manifest
├── robots.txt              # Search engine directives
├── package.json            # Project dependencies
├── webpack.common.js       # Shared webpack config
├── webpack.config.dev.js   # Development webpack config
└── webpack.config.prod.js  # Production webpack config
```

## Technologies Used

- **Build Tools**: Webpack 5, Webpack Dev Server
- **Fonts**: Google Fonts (JetBrains Mono, Roboto)
- **PWA**: Web App Manifest support

## License

See [LICENSE.txt](LICENSE.txt) for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Links

- Website: [https://banyango.com/margarita/](https://banyango.com/margarita/)

---

Built with ❤️ for the AI community

