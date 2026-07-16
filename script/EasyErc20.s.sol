// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {EasyErc20} from "../src/EasyErc20.sol";

contract EasyErc20Script is Script {
    EasyErc20 public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new EasyErc20();

        vm.stopBroadcast();
    }
}
