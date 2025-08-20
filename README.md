# apt-zen 🧘 

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu%20%7C%20Debian-orange.svg)](https://ubuntu.com/)

*A beautiful, peaceful APT wrapper for mindful package management*



```
╭────────────────────────────────────────────────────────╮
│ apt-zen 🧘 Zen Package Manager                         │
╰────────────────────────────────────────────────────────╯

"Like waves that gently touch the shore, let packages
 flow peacefully through your system."
                                          - ShoreNexx
```



## ✨ Features

- **🎨 Beautiful Interface**: Clean, minimalist design with harmonious colors
- **📊 Interactive Tables**: Elegant package displays with proper alignment
- **🔄 Expand/Collapse**: Interactive package lists for better navigation
- **💫 Zen Philosophy**: Peaceful, mindful approach to package management
- **🚀 Fast & Lightweight**: Simple bash script with minimal dependencies
- **🛡️ Safe Operations**: Confirmation prompts for all system changes

## 📦 Installation

### Git Clone Method (Recommended)
```bash
# Clone the repository
git clone https://github.com/ShoreNexx/apt-zen.git

# Navigate to directory
cd apt-zen

# Run the installation script
chmod +x install.sh
./install.sh

# Or install manually
sudo cp apt-zen /usr/local/bin/
sudo chmod +x /usr/local/bin/apt-zen
```


### Requirements
- **OS**: Ubuntu 20.04+ or Debian-based distributions
- **Shell**: Bash 4.0+
- **Dependencies**: `apt`, `sudo`, `git`

## 🧘 Usage

### Basic Commands

```bash
# Show help and zen wisdom
apt-zen

# Update system packages
sudo apt-zen upgrade

# Install a package
sudo apt-zen install <package>

# Search for packages
apt-zen search <query>
```

### Examples

```bash
# System maintenance
sudo apt-zen upgrade               # Peaceful system updates

# Package installation
sudo apt-zen install firefox       # Install Firefox browser
sudo apt-zen install code          # Install VS Code
sudo apt-zen install htop          # Install system monitor

# Package discovery
apt-zen search browser             # Find web browsers
apt-zen search editor              # Find text editors
apt-zen search python              # Find Python packages
```

## 🎯 Screenshots

### System Upgrade
```
╭────────────────────────────────────────────────────────╮
│ System Upgrade                                         │
╰────────────────────────────────────────────────────────╯

Found 15 packages to upgrade

╭─────────────┬────────────────────────────────┬──────────────────╮
│  Action     │  Package                       │  Version         │
├─────────────┼────────────────────────────────┼──────────────────┤
│ Upgrade     │ firefox                        │ 1:141.0.3+17...  │
│ Upgrade     │ libc6                          │ 2.35-0ubuntu...  │
│ Upgrade     │ curl                           │ 7.81.0-1         │
│ Upgrade     │ git                            │ 2.34.1-1ubuntu   │
│ Upgrade     │ vim                            │ 8.2.3458-2       │
│ ▼ Click...  │ and 10 more packages           │ (press Enter)    │
╰─────────────┴────────────────────────────────┴──────────────────╯

💡 Press Enter to expand all packages, or Any key to continue...
```

### Package Search
```
╭────────────────────────────────────────────────────────╮
│ Package Search Results                                 │
╰────────────────────────────────────────────────────────╯

Searching for: browser

╭─────────────┬────────────────────────────────┬──────────────────╮
│  Action     │  Package                       │  Version         │
├─────────────┼────────────────────────────────┼──────────────────┤
│ Available   │ firefox                        │ 1:141.0.3~17...  │
│ Available   │ chromium-browser               │ 108.0.5359.9...  │
│ Available   │ opera-stable                   │ 94.0.4606.61     │
│ Available   │ lynx                           │ 2.9.0dev.6-3     │
╰─────────────┴────────────────────────────────┴──────────────────╯
```

## 🎨 Design Philosophy

**apt-zen** embodies the principles of zen design:

- **Simplicity**: Clean, uncluttered interface
- **Harmony**: Balanced colors and spacing
- **Mindfulness**: Thoughtful confirmations and clear feedback
- **Peace**: Stress-free package management experience

## 🛠️ Development

### Project Structure
```
apt-zen/
├── apt-zen              # Main script
├── install.sh           # Installation script
├── README.md           # Documentation
├── LICENSE             # MIT License
```

### Building from Source

```bash
# Clone the repository
git clone https://github.com/ShoreNexx/apt-zen.git
cd apt-zen

# Test the script
./apt-zen

# Install locally
sudo make install

# Or install manually
sudo cp apt-zen /usr/local/bin/
sudo chmod +x /usr/local/bin/apt-zen
```

### Contributing

We welcome contributions! Please follow these steps:

1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/YourUsername/apt-zen.git`
3. **Create** a feature branch: `git checkout -b feature/amazing-feature`
4. **Make** your changes and test thoroughly
5. **Commit** your changes: `git commit -m 'Add amazing feature'`
6. **Push** to the branch: `git push origin feature/amazing-feature`
7. **Open** a Pull Request

### Code Style

- Use **4 spaces** for indentation
- Follow **bash best practices**
- Add **comments** for complex logic
- Maintain **zen aesthetics** in all interfaces
- Test on Ubuntu 20.04+ and Debian 11+


## 📋 Roadmap

- [ ] **Package removal** functionality (`apt-zen remove`)
- [ ] **Package information** detailed view (`apt-zen info`)
- [ ] **Configuration file** support (`~/.apt-zen.conf`)
- [ ] **Themes** and customization options
- [ ] **Plugin system** for extensions
- [ ] **Package history** and rollback features


## ⚖️ License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🤝 Support & Community

- **🐛 Report Issues**: [GitHub Issues](https://github.com/ShoreNexx/apt-zen/issues)
- **💬 Discussions**: [GitHub Discussions](https://github.com/ShoreNexx/apt-zen/discussions)


### Bug Reports

When reporting bugs, please include:
- Your OS version (`lsb_release -a`)
- apt-zen version (`apt-zen --version`)
- Steps to reproduce
- Expected vs actual behavior

### Feature Requests

We love hearing your ideas! Please:
- Check existing issues first
- Describe the feature clearly
- Explain the use case
- Consider the zen philosophy

## 🙏 Acknowledgments

- **APT Development Team** - For the excellent package management system
- **Ubuntu/Debian Communities** - For providing robust Linux distributions  
- **Open Source Community** - For inspiration and support






**Made with 🧘 by [ShoreNexx](https://github.com/ShoreNexx)**

*Bringing zen to the digital shore, one package at a time*

**⭐ Star this repository if it brings peace to your package management! ⭐**

