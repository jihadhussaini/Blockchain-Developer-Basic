// SPDX-License-Identifier: unlicensed
pragma solidity ^0.8.7;

contract SendMoneyExample {
    
    uint public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawMoney() public {
        payable(msg.sender).transfer(this.getBalance());
    }
}