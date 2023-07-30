# Transferring NFTs from Goerli to Mumbai Testnet

This project is part of the Polygon Proof: Proof of Stake  by Metacrafters

In this project, we had to create a ERC721 contract to mint and transfer NFTs from Goerli to Mumbai testnet. We have used an AI Image generation tool to generate 5 images which will be used as NFTs.
&nbsp;


The images has beed stored on an IPFS, which provides a unique ID called CID for each document. Storing images on an IPFS is more efficient and cost efficient as compared to storing the images on the blockchain, as the gas fee is lower.
&nbsp;
&nbsp;

### Project Setup

- Clone the repository.
- Run `npm i` to install all the packages
- Create a .env file to store the private key as `PRIVATE_KEY` and the contract address as `CONTRACT_ADDR`


### Contract Deployment

 - Run `npx hardhat compile` to compile the solidity files.
 - Deploy the contract using the following command 
   &nbsp;
   
   `npx hardhat run scripts/deploy.js --network goerli`.
 - Copy and paste the contract address in the .env file
 - Run `npx hardhat run scripts/batchMint.js --network goerli` to mint all the NFTs in a single transaction.
 - Approve and transfer the NFTs using the following command
    &nbsp;

   `npx hardhat run scripts/approveDeposit.js --network goerli`

&nbsp;

### Walkthrough Video

Part 1: https://www.loom.com/share/e85216379c924695b31061013c49b7c2
Part 2: https://www.loom.com/share/792fbec5caf3409a99dfbfd7e9cf1dc5