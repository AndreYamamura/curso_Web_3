// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CursoWeb3_Exercicio2 {
    address private immutable owner;
    string public name;

    function getName() public view returns(string memory) {
        return name;
    }

    constructor(string memory parameterName) {
        owner = msg.sender;
        name = parameterName;
    }
}