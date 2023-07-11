// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {DeployMoodNft} from "../script/DeployMoodNft.s.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {Test, console} from "forge-std/Test.sol";
import {StdCheats} from "forge-std/StdCheats.sol";
import {MintBasicNft} from "../script/Interactions.s.sol";

contract DeployMoodNftTest is StdCheats, Test {
    DeployMoodNft public deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public {}
}
