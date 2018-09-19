pragma solidity ^0.4.25; /* ^ Means most version of solitiy. */

import "github.com/someRepo/Test.sol";
import "./Test.sol";


/* inheriting Test like this treats about contracts as one.. */
contract HelloWorld is Test {
    
    Test testContract;
    
    constructor(address _addr_ public {
        testContract = Test(_addr);
    }
    
    /* call a function from depolyed SC test and use it's function */'
    function someFunc() public {
        testContract.someFunction();
        
    }
}

contract Functions {
    
    /* init function. only runs once. */
    
    /* delaring vars as public auto-creates a call function for it. */
    /* internal, external, and private exist. internal is good for helper functions at do math within the contract. */
    string public name;
    uint256 public num;
    
    constructor(string _name, uint256 _num) public {
        name  = _name;
        num = _num;
    }
    
    /* all call functions use the call keyword. */
}

contract Structs {
    
    struct info {
        uint256 id;
        string name;
        uint256 balance;
        bool admin;
    }
    
    mapping(address => info) userInfo;
    
    function addInfo(uint256 _id, string _name, unit256 _balance, bool _admin) public {
        userInfo[msg.sender].id = _id;
        userInfo[msg.sender].name = _name;
        userInfo[msg.sender].balance = _balance;
        userInfo[msg.sender].admin = _admin;
    }
    
    /* A caller function for this struct. You can also declare the struct as public and would return the same thing. */
    
    function getInfo() public view returns (uint256, string, uint256, bool) {
        return (userInfo[_user].id, userInfo[_user].name, userInfo[_user].balance, userInfo[_user].admin)
    }
}



contract Types {
    
    string name = "stu";
    
    bytes32 othername = "tim";
    
    /* unsigned int - postive only. */
    uint256 num = 2;
    
    /* signed int - postivie and negitive, but half the positive numbers avilable. */
    int 256 num2 = 3
    
    /* good for token sales. raise funds, and if requirements ment turns to true. */
    bool isComplete;
    
    /* must be all the same type. this is a dynamic array, no limit. */
    address[] addrs;
    
    /* static sized array. only 5 elements allowed. */
    address[5] addrs2;
    
    /* Dictionary of account balances tied to an address. */
    mapping(address => uint256) balances;
    
    /* object declaration. Cant return whole struct but can return individual values of a struct. */
    struct userInfo {
        uint256 id;
        string name;
        uint256  balance;
        bool admin;
    }
    
    mapping(address => userInfo) userInfo;
    
    }
    
contract Token {
    
    address public owner;
    uint256 public totalSupply;
    
    mapping (address => uint256) public  balances;
    
    /* not stored in the state, but in the log of the contract. can't be queried by other contracts. */'
    event Transfer (address _to, address _from, uint256 _value);
    
    constructor(uint256 _totalSupply) public {
        owner = msg.sender;
        totalSupply = _totalSupply;
        balances{owner] = totalSupply;
    }
    
    function transfer(address _to, uint256 _value) public returns (bool) {
        
        /* if this requirement isnt ment then all gas is burned and no code below it is run. */
        require(balances[msg.sender] >= _value);
        balances[msg.sender] -= _value;
        balance[_to] += _value;
        emit Transfer(_to, msg.sender, _value);
        
        /* kind of like a try catch. */
        return true;
    }
    
    function mint(uint256 _amount) public returns (bool) {
        require(msg.sender == owner);
        totalSupply += _amount;
        balances[owner] += _amount;
        return true;
    }
    
    
    
}
    
    
}

