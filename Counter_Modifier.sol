pragma solidity ^0.5.11;


contract Counter {
    
    uint public count;
    address public owner;
    // Only the owner of the contract can call a function with this modifier
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    constructor(uint _count) public {
        count = _count;
        owner = msg.sender;
    }
    // Only owner called here
    function increment() external onlyOwner {
        count++;
    }
    
    function decrement() external {
        count--;
    }
}
