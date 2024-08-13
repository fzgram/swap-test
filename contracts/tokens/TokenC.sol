// SPDX-License-Identifier: UNLICENSED
pragma solidity >0.5.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenC is ERC20, Ownable{
    constructor() ERC20("DAYL Coin", "DAYL") Ownable(msg.sender){ }

    function mint(address to, uint256 _amount) external onlyOwner{
        _mint(to, _amount);
    }
}
