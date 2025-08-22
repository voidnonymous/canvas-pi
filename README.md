# 🍓 Canvas Pi - One-Command Setup

[![Deploy](https://img.shields.io/badge/Deploy-Raspberry%20Pi-green?logo=raspberry-pi)](https://github.com/voidnonymous/canvas-pi)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/voidnonymous/canvas-pi)](https://github.com/voidnonymous/canvas-pi/releases)

Self-hosted infinite canvas app optimized for Raspberry Pi with one-command deployment.

## ⚡ Ultra Quick Start

```bash
curl -sSL https://raw.githubusercontent.com/voidnonymous/canvas-pi/main/install.sh | bash
```

That's it! 🎉 Your canvas app will be running at `http://your-pi-ip` in ~3 minutes.

## 🎯 What You Get

- **Infinite Canvas**: Pan, zoom, create notes and connections
- **Multi-board Support**: Create unlimited boards
- **Auto-save**: Never lose your work
- **Network Access**: Access from any device on your network
- **Optimized for Pi**: Efficient resource usage
- **Auto-backup**: Daily database backups
- **SSL Ready**: Easy HTTPS setup

## 🖥️ System Requirements

- **Raspberry Pi**: 3B+ or newer (4GB+ RAM recommended)
- **Storage**: 8GB+ SD card with 2GB free space
- **Network**: WiFi or Ethernet connection
- **OS**: Raspberry Pi OS (64-bit preferred)

## 🌍 Access Your Canvas

After installation:
- **Local**: `http://localhost`
- **Network**: `http://[your-pi-ip]`
- **Health Check**: `http://[your-pi-ip]/api/health`

## 🛠️ Management Commands

```bash
# Check status
sudo systemctl status canvas-pi

# View logs
sudo journalctl -u canvas-pi -f

# Restart service
sudo systemctl restart canvas-pi

# Update to latest version
cd /opt/canvas-pi && git pull && sudo systemctl restart canvas-pi

# Manual backup
/opt/canvas-pi/scripts/backup.sh
```

## 🐳 Docker Alternative

Prefer Docker? We've got you covered:

```bash
docker run -d -p 80:80 --name canvas-pi \
  -v canvas_data:/app/data \
  --restart unless-stopped \
  voidnonymous/canvas-pi:latest
```

## 📚 Documentation

- [📖 Deployment Guide](docs/DEPLOYMENT.md) - Advanced setup options
- [🔌 API Documentation](docs/API.md) - REST API reference
- [🛠️ Troubleshooting](docs/TROUBLESHOOTING.md) - Common issues
- [🤝 Contributing](CONTRIBUTING.md) - How to help

## 🔧 Development

```bash
# Clone repository
git clone https://github.com/voidnonymous/canvas-pi.git
cd canvas-pi

# Install dependencies
cd backend && npm install

# Start development server
npm run dev
```

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

## 🙋 Support

- 🐛 [Report bugs](https://github.com/voidnonymous/canvas-pi/issues)
- 💡 [Request features](https://github.com/voidnonymous/canvas-pi/issues)
- 💬 [Discussions](https://github.com/voidnonymous/canvas-pi/discussions)

---

**One command. Three minutes. Infinite possibilities.** 🍓✨
