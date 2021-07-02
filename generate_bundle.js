// make a bundle containing all of the resources in the folder

const fs = require('fs');

let bundleOutputFileName = "./bundle.json"
let bundle = {resourceType:'Bundle',type:'collection',entry:[]}
let folderPath = "./fsh-generated/resources/";
let folder = fs.readdirSync(folderPath);

folder.forEach(file => {
  if (file.includes('ImplementationGuide')) {
    return;
  }
  let fullPath = folderPath + file;
  let resource = fs.readFileSync(fullPath);
  if (resource) {
    console.log('Adding ' + fullPath)
    let json = JSON.parse(resource);
    if (json.resourceType) {
      let entry = {};
      entry.resource = json;
      bundle.entry.push(entry);
    }
  }
})

fs.writeFileSync(bundleOutputFileName,JSON.stringify(bundle,null,2))
console.log('Bundle created: ' + bundleOutputFileName)
