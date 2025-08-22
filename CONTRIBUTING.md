# 🤝 Contributing to Canvas Pi

Thanks for your interest in contributing! This guide will help you get started.

## 🚀 Quick Setup

```bash
# Fork and clone
git clone https://github.com/voidnonymous/canvas-pi.git
cd canvas-pi

# Install dependencies
cd backend && npm install

# Start development server
npm run dev
```

## 📋 Development Guidelines

### Code Style
- Use ESLint configuration
- Follow semantic commit messages
- Add tests for new features
- Update documentation

### Commit Messages
```
feat: add new canvas tool
fix: resolve memory leak in board cache
docs: update installation guide
test: add unit tests for API endpoints
```

### Pull Request Process
1. Fork the repository
2. Create a feature branch: `git checkout -b feat/amazing-feature`
3. Make your changes
4. Test thoroughly
5. Submit PR with clear description

## 🐛 Bug Reports

Use the issue template and include:
- Pi model and OS version
- Steps to reproduce
- Expected vs actual behavior
- Relevant logs

## 💡 Feature Requests

Before suggesting features:
- Check existing issues
- Consider Pi resource constraints
- Explain the use case clearly

## 🧪 Testing

```bash
# Run tests
npm test

# Test on actual Pi
make install
```

Thank you for helping make Canvas Pi better! 🍓