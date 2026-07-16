// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract EasyErc20 is ERC20 {
    event Deployed(address indexed creator, uint256 time);

    event MintOk(
        address indexed user,
        uint256 balanceBefore,
        uint256 balanceAfter
    );

    constructor() ERC20("Easy Erc 20 xxx", "EasyErc20") {
        emit Deployed(msg.sender, block.timestamp);
    }

    function mint() public {
        uint256 balance1 = balanceOf(msg.sender);
        _mint(msg.sender, 3000);
        uint256 balance2 = balanceOf(msg.sender);

        emit MintOk(msg.sender, balance1, balance2);
    }
}
