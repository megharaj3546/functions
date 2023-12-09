// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address public deployer;
    bool public active;

    modifier onlyDeployer() {
        require(msg.sender == deployer, "Only the deployer can call this function");
        _;
    }

    constructor() ERC20("Premium Token", "PT") {
        deployer = msg.sender;
    }

    function initialize() external {
        require(!active, "Already initialized");
        _mint(deployer, 100);
        active = true;
    }

    function mint(address grantee, uint256 integer) external onlyDeployer {
        _mint(grantee, integer);
    }

    function burn(uint256 integer) external {
        _burn(msg.sender, integer);
    }

    function _transfer(address Other_User, uint256 integer) external {
        _transfer(msg.sender, Other_User, integer);
    }
}
