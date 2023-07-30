const fs = require('fs');
const path = require('path');
console.log(__dirname);

for (let i = 0; i < 5; i++) {

  // Creates a JSON object for each NFT
  const json = {
    name: `${i}`,
    description: "Humans travelling to another earth like planet",
    image: `https://gateway.pinata.cloud/ipfs/QmQoZQ9AFuwxGqdgJrFK6yvbuoy1yXJutAYYUM8JG5hNAy/${i}.jpeg`,
  };

  // Writes the JSON object to a file
  fs.writeFileSync(
    path.join(__dirname, 'nftcollection', String(i)),
    JSON.stringify(json)
  );
}

// run node metadata/generateNftData.js