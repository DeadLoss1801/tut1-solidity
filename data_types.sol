// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MyContract {
    // state variables
    uint public myUint = 1;
    //uint256, uint8, int256

    string public str = "Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, world!");

    constructor() {
        myAddress = msg.sender;
    }

    // Local Variables
    function getValue() public pure returns (uint) {
        uint value = 0;
        value = value + 1;
        return value;
    }
}
