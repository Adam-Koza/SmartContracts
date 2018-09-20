pragma solidity ^0.4.25;

contract TL {
  
  address public owner;
  
  constructor() public {
      
      owner = msg.sender;
      
      struct users {
        uint256 id;
        string name;
        uint256 balance;
        bool admin;
      }
      
      struct requestQueue {
          users
      }
  }
  
  function Depost public payable {
      
      
      
      
  }
  
  
  
   function payLoan public payable {
       if (msg.value == owed[msg.sender].value)
       msg.sender.transfer(owed[msg.sender].collateral)
   }





  
  function () public {
      require(msg.sender == owner);
      require(block.number > blockheight);
      owner.transfer(address(this).balance);
      
      
      
  }
}

