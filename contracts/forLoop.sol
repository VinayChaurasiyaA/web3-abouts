// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract forLoop {
    // Declaring a dynamic array 
    uint[] public data; 
    
    // Defining a function 
    // to demonstrate 'For loop'
    function loop() public returns(uint[] memory){
        for(uint i=0; i<5; i++){
            data.push(i+10);
        }
      return data;
    }
}
// there are 3 special types of function such as constructor, retrieve , fallback, retrieve and fallback are called when we don't specify the thing we need to
// constructor is run first function in the contract (as other programming language)