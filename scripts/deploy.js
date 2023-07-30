const { ethers } = require("hardhat");
const fs = require('fs');

async function main() {
  const spaceTravelNFT = await ethers.getContractFactory("SpaceTravel");
  const nft = await spaceTravelNFT.deploy();
  await nft.deployed();

  console.log("NFT contract deployed to:", nft.address);

  fs.writeFileSync('metadata/contractAddress.js', `export const nftAddress = "${nft.address}" `);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
