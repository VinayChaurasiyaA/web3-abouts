//SPDX-License-Identifier: MIT 
pragma solidity 0.8.8; // in solidity firstly we have to write which version we want to use ^ will help to use any version which are greater than or equal to 0.8.7 or we could use >=
// sometimes SPDX are mandatory as some of the complier are weak and they need that

// below is the contract it works as the java class 
contract SimpleStorage {
    // some basic types of primitive data type: boolean, uint : only positive number, int , bytes , address:transaction address/ account
    uint public favoutite = 123; // unit(256) or anything shows the storage capacity in bits, if we provide no values after uint then it considers as 256
    string myName = "vinay";
    address myAddress = 0x179177ad055A9C5647B38b6dE2C3088eE8f79F53;    
    bytes32 name = "catty"; // bytes maximum1 storage is 32 so we can only type bytes32;
    // here public means the visibility

    // People public person = People({favoutiteNumber : 2 , name : "vinay"});
    struct People {
        uint256 favoutite;
        string name;
    }

    function store (uint _favouriteNumber) public {
        favoutite = _favouriteNumber;
    }
    // view and pure functions don't have to use any type of fuels/gas.
    function retrive() public view returns(uint256) {
        // after using view we can not change any values in the contract
        // using pure will prevent us from reading any values
        return favoutite;
    }
    // in pure function you cannot read any type of value of the varibale from the contract
    function add() public pure returns(uint256) {
        return (1+1);
    }
}

/// key point : if only we modify data or make function then only we need gas othrwise we don't need anything
//0xd9145CCE52D386f254917e481eB44e9943F39138