// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SmartWallet {

    address public owner;
    mapping(address => uint) public storedValue;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        assert(msg.value > 0);
        storedValue[msg.sender] = msg.value;
    }

    function getBalance() public view returns (uint256){
        return storedValue[msg.sender];
    }
    
    function withdraw() public {
        require(storedValue[msg.sender] > 0, "insufficient balance");
        uint256 amount = storedValue[msg.sender];
        storedValue[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    function withdrawToAddress(address payable withdrawalAddress) public {
        require(storedValue[msg.sender] > 0, "insufficient balance");
        uint256 amount = storedValue[msg.sender];
        storedValue[msg.sender] = 0;
        withdrawalAddress.transfer(amount);
    }
}