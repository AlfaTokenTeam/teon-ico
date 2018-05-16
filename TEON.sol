pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TEON is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TEON(address _owner)  UpgradeableToken(_owner) {
    name = "TEON";
    symbol = "TEON";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}