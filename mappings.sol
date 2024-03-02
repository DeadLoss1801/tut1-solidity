// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MyContract {
    struct Book {
        string name;
        string author;
    }
    mapping(uint => string) names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    constructor() {
        names[1] = "ABhi";
    }

    function addBook(
        uint _id,
        string memory _name,
        string memory _author
    ) public {
        books[_id] = Book(_name, _author);
    }

    function addMyBooks(
        uint _id,
        string memory _name,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_name, _author);
    }
}
