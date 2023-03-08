// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/utils/Strings.sol";

contract Exercicio1_SaveNumber {
    uint256 numberSaved;

    function saveNumber(uint256 numberToBeSaved) public {
        numberSaved = numberToBeSaved;
    }

    function getNumber() public view returns(string memory) {
        return string.concat("The number saved is: ", Strings.toString(numberSaved), ".");
    }
}