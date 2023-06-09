// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./simpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // store + 5
    // override and virtual
    function store (uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}