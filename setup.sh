#!/bin/bash

# Figma JSON Format Documentation Project Setup
# Run this script in an empty directory to create the complete project structure

echo "🚀 Setting up Figma JSON Format Documentation project..."

# Create directory structure
mkdir -p docs
mkdir -p examples/json
mkdir -p examples/plugins/node-explorer
mkdir -p examples/tools
mkdir -p schemas
mkdir -p tests
mkdir -p tools
mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE

echo "📁 Created directory structure"

# Create README.md
cat > README.md << 'EOF'
# Figma Internal JSON Format Documentation

> **🚀 Community-driven documentation of Figma's internal node JSON structure**

[![GitHub stars](https://img.shields.io/github/stars/YOUR_USERNAME/figma-json-format?style=social)](https://github.com/YOUR_USERNAME/figma-json-format)
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
EOF

echo "✅ Created README.md"

# Create CONTRIBUTING.md
cat > CONTRIBUTING.md << 'EOF'
# Contributing to Figma JSON Format Documentation

Thank you for your interest in contributing! This project thrives on community collaboration.

## 🎯 Types of Contributions

### 📝 Documentation Improvements
- Fix typos, grammar, or formatting issues
- Clarify existing explanations
- Add missing property descriptions
- Improve code examples

### 🔍 Research & Discovery
- Document new node properties or types
- Test format changes in new Figma versions
- Validate existing documentation accuracy
- Discover undocumented behaviors or edge cases

### 💡 Examples & Code
- Add real-world JSON samples
- Create plugin examples demonstrating concepts
- Build utility tools for working with the format
- Add test cases and validation scripts

## 🚀 Getting Started

### 1. Fork & Clone
```bash
git clone https://github.com/YOUR_USERNAME/figma-json-format.git
cd figma-json-format
npm install
```

### 2. Create a Branch
```bash
git checkout -b feature/describe-your-change
```

### 3. Make Your Changes
- Follow existing documentation style and structure
- Add examples when documenting new properties
- Test any code examples you include

### 4. Commit & Push
```bash
git add .
git commit -m "feat: add documentation for text decoration properties"
git push origin feature/describe-your-change
```

### 5. Submit Pull Request
- Use the provided PR template
- Reference any related issues
- Explain the research methodology for new discoveries

## 📝 Style Guide

### Property Documentation Template
```markdown
#### propertyName
- **Type**: `string | number | object`
- **Description**: Clear explanation of what this property does
- **Default**: Default value if applicable
- **Example**: `"CENTER"` or `42` or `{ x: 10, y: 20 }`
- **Notes**: Any special behaviors, limitations, or version notes
```

## 🔬 Research Process

### Discovering New Properties
1. **Create Test File** - Build specific scenarios in Figma
2. **Copy to Clipboard** - Use copy-paste to capture JSON
3. **Extract Data** - Parse clipboard or use plugin API
4. **Document Findings** - Record properties, types, and behaviors
5. **Validate** - Test across different node types and configurations

---

**Thank you for contributing to the Figma JSON Format documentation! 🎉**
EOF

echo "✅ Created CONTRIBUTING.md"

# Create package.json
cat > package.json << 'EOF'
{
  "name": "figma-json-format-docs",
  "version": "1.0.0",
  "description": "Community-driven documentation of Figma's internal JSON format",
  "scripts": {
    "test": "node tests/run-tests.js",
    "validate": "node tools/validate-examples.js",
    "lint": "eslint examples/plugins/**/*.js",
    "format": "prettier --write **/*.{js,json,md}"
  },
  "keywords": [
    "figma",
    "json",
    "design",
    "plugin",
    "api",
    "documentation"
  ],
  "author": "Figma JSON Format Community",
  "license": "MIT",
  "devDependencies": {
    "eslint": "^8.45.0",
    "prettier": "^3.0.0",
    "chalk": "^5.3.0"
  },
  "engines": {
    "node": ">=16.0.0"
  }
}
EOF

echo "✅ Created package.json"

# Create LICENSE
cat > LICENSE << 'EOF'
MIT License

Copyright (c) 2025 Figma JSON Format Community

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

echo "✅ Created LICENSE"

# Create .gitignore
cat > .gitignore << 'EOF'
# Dependencies
node_modules/
npm-debug.log*

# Build outputs
dist/
build/
_site/

# IDE files
.vscode/
.idea/
*.swp
*.swo

# OS files
.DS_Store
Thumbs.db

# Environment files
.env
.env.local

# Generated files
schemas/generated/
*.log

# Test outputs
coverage/
test-results/
EOF

echo "✅ Created .gitignore"

# Create GitHub Actions workflow
cat > .github/workflows/ci.yml << 'EOF'
name: CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  validate:
    name: Validate Documentation
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Node.js
      uses: actions/setup-node@v4
      with:
        node-version: '18'
        cache: 'npm'
        
    - name: Install dependencies
      run: npm ci
      
    - name: Validate JSON examples  
      run: npm run validate
      
    - name: Check code formatting
      run: npm run format -- --check
EOF

echo "✅ Created GitHub Actions workflow"

# Create example JSON files
cat > examples/json/simple-rectangle.json << 'EOF'
{
  "id": "1:2",
  "name": "Red Rectangle",
  "type": "RECTANGLE",
  "x": 100,
  "y": 50,
  "width": 200,
  "height": 100,
  "visible": true,
  "fills": [{
    "type": "SOLID",
    "color": {
      "r": 0.9,
      "g": 0.2,
      "b": 0.2,
      "a": 1
    },
    "visible": true
  }],
  "strokes": [],
  "strokeWeight": 0,
  "cornerRadius": 8,
  "constraints": {
    "horizontal": "LEFT",
    "vertical": "TOP"
  }
}
EOF

cat > examples/json/text-node.json << 'EOF' 
{
  "id": "3:4",
  "name": "Heading Text",
  "type": "TEXT",
  "x": 50,
  "y": 50,
  "width": 300,
  "height": 60,
  "characters": "Welcome to Our App",
  "fontSize": 24,
  "fontName": {
    "family": "Inter",
    "style": "Bold"
  },
  "fontWeight": 700,
  "fills": [{
    "type": "SOLID",
    "color": {
      "r": 0.1,
      "g": 0.1,
      "b": 0.1,
      "a": 1
    }
  }],
  "textAlignHorizontal": "LEFT",
  "textAutoResize": "WIDTH_AND_HEIGHT"
}
EOF

echo "✅ Created example JSON files"

# Create validation tool
cat > tools/validate-examples.js << 'EOF'
#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const EXAMPLES_DIR = path.join(__dirname, '../examples/json');
const validNodeTypes = [
  'RECTANGLE', 'ELLIPSE', 'TEXT', 'FRAME', 'GROUP', 
  'COMPONENT', 'INSTANCE', 'VECTOR', 'STAR', 'POLYGON'
];

function validateJSON(filePath) {
  try {
    const content = fs.readFileSync(filePath, 'utf8');
    const data = JSON.parse(content);
    
    if (data.type && validNodeTypes.includes(data.type)) {
      console.log(`✅ ${path.basename(filePath)}`);
      return true;
    } else {
      console.log(`❌ ${path.basename(filePath)}: Invalid node type`);
      return false;
    }
  } catch (error) {
    console.log(`❌ ${path.basename(filePath)}: ${error.message}`);
    return false;
  }
}

function main() {
  console.log('🔍 Validating JSON examples...\n');
  
  if (!fs.existsSync(EXAMPLES_DIR)) {
    console.log('⚠️  Examples directory not found');
    return;
  }
  
  const files = fs.readdirSync(EXAMPLES_DIR)
    .filter(file => file.endsWith('.json'));
  
  let validCount = 0;
  files.forEach(file => {
    const filePath = path.join(EXAMPLES_DIR, file);
    if (validateJSON(filePath)) {
      validCount++;
    }
  });
  
  console.log(`\n📊 Results: ${validCount}/${files.length} files valid`);
}

if (require.main === module) {
  main();
}
EOF

echo "✅ Created validation tool"

# Create simple plugin example
cat > examples/plugins/node-explorer/manifest.json << 'EOF'
{
  "name": "Figma Node Explorer",
  "id": "figma-node-explorer",
  "api": "1.0.0",
  "main": "code.js",
  "ui": "ui.html",
  "capabilities": [],
  "editorType": ["figma"]
}
EOF

cat > examples/plugins/node-explorer/code.js << 'EOF'
// Show the plugin UI
figma.showUI(__html__, { width: 400, height: 600 });

// Handle messages from the UI
figma.ui.onmessage = (msg) => {
  if (msg.type === 'explore-selection') {
    const selection = figma.currentPage.selection;
    
    if (selection.length === 0) {
      figma.ui.postMessage({
        type: 'no-selection',
        message: 'Please select a node to explore'
      });
      return;
    }
    
    const nodeData = selection.map(node => ({
      id: node.id,
      name: node.name,
      type: node.type,
      x: node.x,
      y: node.y,
      width: node.width,
      height: node.height
    }));
    
    figma.ui.postMessage({
      type: 'node-data',
      data: nodeData
    });
  }
  
  if (msg.type === 'close') {
    figma.closePlugin();
  }
};
EOF

cat > examples/plugins/node-explorer/ui.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
  <style>
    body { margin: 16px; font-family: -apple-system, BlinkMacSystemFont, sans-serif; }
    button { 
      background: #0066ff; 
      color: white; 
      border: none; 
      padding: 8px 16px; 
      border-radius: 4px; 
      cursor: pointer; 
      margin: 4px 0;
    }
    pre { 
      background: #f5f5f5; 
      padding: 12px; 
      border-radius: 4px; 
      overflow: auto; 
      font-size: 12px;
    }
  </style>
</head>
<body>
  <h3>Node Explorer</h3>
  <button onclick="exploreSelection()">Explore Selected Nodes</button>
  <button onclick="closePlugin()">Close</button>
  <div id="output"></div>

  <script>
    function exploreSelection() {
      parent.postMessage({ pluginMessage: { type: 'explore-selection' } }, '*');
    }
    
    function closePlugin() {
      parent.postMessage({ pluginMessage: { type: 'close' } }, '*');
    }
    
    window.onmessage = (event) => {
      const msg = event.data.pluginMessage;
      const output = document.getElementById('output');
      
      if (msg.type === 'node-data') {
        output.innerHTML = '<h4>Node Data:</h4><pre>' + 
          JSON.stringify(msg.data, null, 2) + '</pre>';
      } else if (msg.type === 'no-selection') {
        output.innerHTML = '<p>' + msg.message + '</p>';
      }
    };
  </script>
</body>
</html>
EOF

echo "✅ Created plugin example"

# Create issue templates
cat > .github/ISSUE_TEMPLATE/bug_report.md << 'EOF'
---
name: Bug report
about: Create a report to help us improve the documentation  
title: ''
labels: 'bug'
assignees: ''
---

**Describe the bug**
A clear and concise description of what the bug is.

**Documentation Section**  
Which part of the documentation has the issue?

**Expected vs Actual**
What did you expect to see vs what was actually documented?

**Figma Version**
- Figma version: [e.g. 116.7.4]
- Platform: [e.g. Web, Desktop]

**Additional context**
Add any other context about the problem here.
EOF

cat > .github/ISSUE_TEMPLATE/research_request.md << 'EOF'
---
name: Research Request
about: Suggest new properties or behaviors to investigate
title: 'Research: '
labels: 'research, help-wanted'
assignees: ''
---

**Property/Behavior to Research**
What should be investigated?

**Node Types Affected**
Which node types might have this property?

**Research Context**
Why is this important? What use case does it support?

**Initial Findings**
Any preliminary observations or hints?

**Research Approach**
How should this be investigated?
- [ ] Plugin API exploration
- [ ] Clipboard analysis  
- [ ] Cross-version testing
- [ ] Other: ___________
EOF

echo "✅ Created issue templates"

# Create placeholder documentation files
echo "# Figma JSON Format Guide

> Comprehensive documentation coming soon!

This will contain the complete format documentation from the original research.

See the artifacts in the Claude conversation for the full content." > docs/format-guide.md

echo "# Quick Reference

> Quick lookup guide coming soon!

This will contain property cheat sheets and common patterns.

See the artifacts in the Claude conversation for the full content." > docs/quick-reference.md

echo "✅ Created documentation placeholders"

echo ""
echo "🎉 Project setup complete!"
echo ""
echo "Next steps:"
echo "1. Copy the comprehensive documentation from Claude artifacts to docs/"
echo "2. git init && git add . && git commit -m 'Initial project setup'"
echo "3. Create GitHub repository and push"
echo "4. Enable GitHub Pages in repository settings"
echo "5. Start engaging with the community!"
echo ""
echo "📁 Project structure created:"
find . -type f -name "*.md" -o -name "*.json" -o -name "*.js" -o -name "*.yml" | head -20
echo "   ... and more"