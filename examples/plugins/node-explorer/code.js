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
