pragma solidity >=0.4.0 <0.6.0;
      import './Counter.sol'; // import our file.
      import "remix_tests.sol"; // this import is automatically injected by Remix.

    contract test_1 {
        // create our instance see interaction lecture for more details
        Counter simpleCounterInstance;
        
        function beforeAll() public {
            // initiate our contract with a constructor value of 2
            simpleCounterInstance = new Counter(2);
        }
        
        function checkConstructor() public {
            // check the value of count should be 2
            Assert.equal(simpleCounterInstance.count(), uint(2), "inital value is not correct");
        }
    }
