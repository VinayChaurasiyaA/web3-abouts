// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structure {
    uint256 public favoriteNumber;

    mapping(string => uint256) public nameToFavouriteNumber;
    // People public person = People({favoriteNumber : 1, name :  "vinay"});
    // this is like class making the structure and then adding it into a list of data, we cannot add more than 1 data at a time: period
    // so we need array: which holds data of list of others types
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // array People[length] people; if length is not given then dynamic otherwise length is specifies
    People[] public people;

    function store(uint _favouriteNumber) public virtual {
        favoriteNumber = _favouriteNumber;
    }

    // view and pure functions don't have to use any type of fuels/gas.
    function retrive() public view returns (uint256) {
        // after using view we can not change any values in the contract
        // using pure will prevent us from reading any values
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }
    // memory, data location is only needed for the array , list, strcu or mapping as string is the array of character
    // memory: it is used to store the data, there are 6 places to store the data
    // stack , memory , storage , calldata , code , logs
    // calldata is the tempory variable which cannot be modified whereas memory can be modified
}
