pragma solidity 0.4.25;

contract Increment {
  
  uint256 private counter;
  address public owner;
  address public approvedAddress;
  
  constructor() public {
      owner = msg.sender;
      counter = 0;
  }
  
  function getCount() public view returns (uint256) {
      return counter;
  }
  
  function incCounter() public {
      require(msg.sender == owner || msg.sender == approvedAddress);
      counter += 1;
  }
  
  function setApprovedAddress(address _approvedAddress) public {
      require(msg.sender == owner);
      approvedAddress = _approvedAddress;
  }
}

