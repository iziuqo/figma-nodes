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
