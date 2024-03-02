// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MyContract {
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function isEvenNumber(uint _number) public pure returns (bool) {
        if (_number % 2 == 0) return true;
        else return false;
    }

    function countEvenNumbers() public view returns (uint) {
        uint count = 0;

        for (uint i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) count++;
        }
        return count;
    }

    function isOwner() public view returns (bool) {
        return (owner == msg.sender);
    }
}
