// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";


contract SpaceTravel is ERC721, Ownable {

    uint256 public maxQuantity = 5;
    uint256 private currentTokenId = 0;

    constructor() ERC721("SpaceTravel", "SPCT") {
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireMinted(tokenId);
        string memory tokenIDWithExt = string.concat(Strings.toString(tokenId),".jpeg");
        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenIDWithExt) : "";
    }

    // Return the base URI of the IPFS
    function _baseURI() internal pure override returns (string memory) {
        return "https://gateway.ipfs.io/ipfs/QmQoZQ9AFuwxGqdgJrFK6yvbuoy1yXJutAYYUM8JG5hNAy/";
    }

    // Returns the prompt used to generate the images for the given NFT tokenId
    function promptDescription() external pure returns (string memory) {
        return "humans travelling to another earth like planet, graphic";
    }

    // Function to mint NFTs (Only contract owner can call this function)
    function mintNFT(uint256 quantity) external onlyOwner {
        require(currentTokenId + quantity <= maxQuantity, "Exceeds maximum token limit");
        for (uint256 i = 0; i < quantity; i++) {
            _mint(msg.sender, currentTokenId);
            currentTokenId++;
        }
    }
}
