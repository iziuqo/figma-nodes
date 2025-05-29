# Figma Internal JSON Format Documentation

> **🚀 Community-driven documentation of Figma's internal node JSON structure**

[![GitHub stars](https://img.shields.io/github/stars/iziuqo/figma-figma-nodes?style=social)](https://github.com/iziuqo/figma-figma-nodes)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

## 🎯 What is this?

This repository contains comprehensive documentation of Figma's internal JSON format used for:
- **Clipboard operations** (`application/x-figma-design` MIME type)
- **Plugin API interactions**
- **Design automation and tooling**
- **Cross-platform design data exchange**

## 📚 Documentation

- **[Complete Format Guide](docs/format-guide.md)** - Comprehensive documentation of all node types and properties
- **[Quick Reference](docs/quick-reference.md)** - Cheat sheet for common properties
- **[Plugin Examples](examples/plugins/)** - Working plugin code examples
- **[JSON Samples](examples/json/)** - Real-world JSON structure examples

## 🚀 Quick Start

### For Plugin Developers
```javascript
// Read node properties
const node = figma.currentPage.selection[0];
console.log({
  type: node.type,
  name: node.name,
  dimensions: { width: node.width, height: node.height },
  position: { x: node.x, y: node.y }
});
```

### For Clipboard Analysis
```javascript
// In browser console (Figma web)
navigator.clipboard.readText().then(text => {
  if (text.includes('application/x-figma-design')) {
    const data = JSON.parse(text);
    console.log('Figma nodes:', data);
  }
});
```

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Ways to contribute:**
- 📝 **Documentation** - Improve existing docs or add missing sections
- 🔍 **Discovery** - Find and document new properties or node types
- 💡 **Examples** - Add real-world JSON samples or plugin code
- 🧪 **Testing** - Create test cases for different scenarios

## ⚠️ Important Notes

- **Unofficial Documentation** - This is community research, not official Figma docs
- **Format Changes** - Figma's internal format may change without notice
- **Use at Own Risk** - Always test thoroughly in production environments

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**💡 Found this useful?** Give it a star ⭐ and share with other Figma developers!
