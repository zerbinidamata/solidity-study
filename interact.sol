pragma solidity ^0.5.11;


contract Counter {
    
    uint public count;
    
    function increment() external {
        require(msg.sender != tx.origin);
        count++;
    }
}

// Inherit functions from counter (not needed for interactions just a demo)
contract interact is Counter {
    // create space to keep our instance 
    Counter counterInstance; 
    
    constructor(address _counter) public {
        // initiate our instance
        counterInstance = Counter(_counter);
    }
    
    function incrementCounter() external {
        // can call functions with out instance
        counterInstance.increment();
    }
}
