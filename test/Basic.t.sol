// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "./lib/YulDeployer.sol";
import "forge-std/console.sol";

contract BasicTest is Test {
    YulDeployer yulDeployer = new YulDeployer();
    address public basic;

    function setUp() public {
        basic = yulDeployer.deployContract("Basic");
    }

    function testBasic() public {
        (bool success, bytes memory result) = basic.staticcall("");
        assertEq(uint256(bytes32(result)), 8);
        assertTrue(success);
    }
}
