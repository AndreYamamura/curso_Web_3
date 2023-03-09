// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
   * @title Exercicio3_GetNumberWithWeb3
   * @dev ContractDescription
   * @custom:dev-run-script ./scripts/script_web3.js
*/
contract Exercicio3_GetNumberWithWeb3 {
    uint256 public numberSaved = 31;

    function getNumber() public view returns(uint256) {
        return numberSaved;
    }
}