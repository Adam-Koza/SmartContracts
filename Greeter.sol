pragma solidity ^0.4.0;


contract Mortal {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function Mortal() { 
        owner = msg.sender; 
    }

    /* Function to recover the funds on the contract */
    function kill() { 
        if (msg.sender == owner) selfdestruct(owner); 
    }
}

contract Greeter is Mortal {
    /* Define variable greeting of the type string */
    string greeting;
    string SUCCESS_MSG = "New greeting has been set.";
    string FAIL_MSG = "You are not the owner. Request denied.";

    /* This runs when the contract is executed */
    function Greeter(string _greeting) public {
        greeting = _greeting;
    }
    

    /* Main function */
    function greet() constant returns (string) {
        return greeting;
    }
    
    /* Set new greeting. But since this function changes it's state the success and fail messages won't be displayed." */
    function setGreeting(string _new_greeting) returns (string) {
        if (msg.sender == owner) {
            greeting = _new_greeting;
            return SUCCESS_MSG;
        }
        return FAIL_MSG;
    }
}