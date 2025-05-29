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
