// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {MoodNft} from "../src/MoodNft.sol";
import {Script, console} from "forge-std/Script.sol";
import {Base64} from "../node_modules/@openzeppelin/contracts/utils/Base64.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft) {
        string memory sadSvg = vm.readFile("./img/sad.svg");
        string memory happySvg = vm.readFile("./img/happy.svg");
        console.log(sadSvg);

        vm.startBroadcast();
        MoodNft moodNft = new MoodNft(
            svgToIMageURI(sadSvg),
            svgToIMageURI(happySvg)
        );
        vm.stopBroadcast();
        return moodNft;
    }

    function svgToIMageURI(
        string memory svg
    ) public pure returns (string memory) {
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(
            bytes(string(abi.encodePacked(svg)))
        );
        return string(abi.encodePacked(baseURL, svgBase64Encoded));
    }
}
