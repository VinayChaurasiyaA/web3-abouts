// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import './structure.sol';
contract ExtraStorage is Structure{
    // this is here we have done inheritance by using "is" and then to override
    //  a function we have to tell it from the upper class that it has a virual access
    //  and as well as we have to make it known for a override

    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}