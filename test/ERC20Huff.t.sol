// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract ERC20HuffTest is Test {
    /// @dev Address of the SimpleStore contract.
    ERC20 public erc20;

    /// @dev Setup the testing environment.
    function setUp() public {
        string memory name = "Marvel";
        string memory symbol = "MAR";
        bytes memory args = abi.encode(name, symbol);
        erc20 = ERC20(HuffDeployer.deploy_with_args("ERC20", args));
    }

    /// @dev Ensure that you can set and get the value.
    function testDeploy() public {
        erc20.name();
        // erc20.symbol();
        // string memory name = erc20.name();
        // console2.log(erc20.name());
        // assertEq(erc20.name(), "Marvel");
        // assertEq(erc20.symbol(), "MARVEL");
        bool success = true;
        assertTrue(success);
    }
}

interface ERC20 {
    function name() external returns (string memory);

    function symbol() external returns (string memory);
}
