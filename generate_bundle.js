// make a bundle containing all of the resources in the folder
// called from _genSamples.sh with ./temp/stage containing FHIR resources.

const fs = require('fs');

let bundleOutputFileName = "./bundle.json"
let bundle = {resourceType:'Bundle',type:'collection',entry:[]}
var args = process.argv.slice(2);

if (args.length === 0 || args.length > 1 ) {
  console.log("Usage: node generate_bundle.js <path to json resources>")
  return 1;
}
//Path must have "/" at the end.
let folderPath = args[0].replace(/\/?\s*$/, "/");
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
