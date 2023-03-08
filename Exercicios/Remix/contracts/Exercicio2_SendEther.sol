// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/utils/Strings.sol";

contract Exercicio2_SendEther {
    function getBalance() external view returns(string memory) {
        uint256 etherBalance = address(this).balance /10**18;
        return string.concat("Your Ether balance is: ", Strings.toString(etherBalance), " ETH.");
    }

    receive() external payable{}
}
