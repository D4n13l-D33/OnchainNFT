// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DNLNFT is ERC721URIStorage, Ownable(msg.sender) {
    uint256 tokenID = 0;
    string [] uri = ["ipfs://bafkreifvtgjkk2g7v6rslzifx6mtwtnb4lkhokjytdhmpsf6qolde23r6a"];

    constructor() ERC721("D4n13l", "DNL"){}

    function mint (uint _index) external onlyOwner{
        _mint (msg.sender, tokenID);
        _setTokenURI(tokenID, uri[_index]);

        tokenID = tokenID + 1;
    }
}
