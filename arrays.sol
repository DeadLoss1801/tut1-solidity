// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MyContract {
    // Arrays

    uint[] public arr = [1, 2, 3];
    string[] public stringARR = ["apple", "Bannna"];

    string[] public values;
    uint256[][] public arr2D = [[1, 2, 3], [1, 2, 3], [1, 2, 3]];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint) {
        return values.length;
    }
}
