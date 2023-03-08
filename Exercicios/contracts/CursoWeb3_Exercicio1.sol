// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CursoWeb3_Exercicio1 {
    address private immutable owner;
    uint32 private nextId = 0;
    uint32 public count;

    struct Customer {
        string name;
        uint8 age;
    }

    mapping(uint32 => Customer) public customers;

    constructor() {
        owner = msg.sender;
    }

    function getNextId() private returns(uint32) {
        return ++nextId;
    }

    function addCustomer(Customer memory customer) public {
        require(msg.sender == owner, "Caller is not the owner of the contract!");
        uint32 id = getNextId();
        customers[id] = customer;
        count++;
    }
    
}