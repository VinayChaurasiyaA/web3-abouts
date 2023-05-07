//SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// i output we are getting the array visualiser too, to see where the number of address is locating
import './structure.sol';
contract StorageFactory {
    Structure[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        Structure simpleStorage = new Structure();
        simpleStorageArray.push(simpleStorage);
    }
    // [ 0 -> 12 ]
    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        Structure simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber); // this is storing the provided number from the store function to the structure class

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        Structure simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrive(); // here retrive returns the number which has been stored in the local value from the store function to the array
        
    }
}