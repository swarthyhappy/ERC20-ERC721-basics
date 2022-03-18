 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MeshCoin is ERC20, Ownable {
    uint256 public rate = 1000 * 10 ** decimals();    
    constructor() ERC20("MeshCoin", "MSH") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
    
    // to increment total supply
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    //  payable allow the contract address to receive ether
    event buyToken(address, uint); receive() external payable {
        emit buyToken(msg.sender, msg.value);
        
    }
        
     
}  