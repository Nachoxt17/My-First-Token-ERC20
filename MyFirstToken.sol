pragma solidity ^0.5.0;

contract NachoCoin {
  string public name;
  string public symbol;
  uint8 public decimals;
  uint256 public totalSupply;
  mapping(address => uint256) public balanceOf;
  mapping(address => mapping(address => uint256)) public approve;

  event Approval(address indexed _owner, address indexed _spender, uint256 _value)

  function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balanceOf[msg.sender] >= _value);
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit event Approval( msg.sender, _to,  _value);
    return true;
  }
}