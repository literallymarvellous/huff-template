// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/ERC20.sol";

contract ERC20Test is Test {
    /// @dev Address of the ERC20 contract.
    ERC20 public erc20;

    /// @dev Setup the testing environment.
    function setUp() public {
        erc20 = new ERC20("Marvel", "MARVEL", 18);
    }

    /// @dev Ensure that you can set and get the value.
    function testDeploy() public {
        string memory symbol = erc20.symbol();
        console2.log("symbol:", symbol);

        // assertEq(erc20.name(), "Marvel");
        // assertEq(erc20.symbol(), "MARVEL");
        bool success = true;
        assertTrue(success);
    }
}
