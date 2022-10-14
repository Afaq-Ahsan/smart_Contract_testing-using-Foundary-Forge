// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;
import "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

error transferfaild();
contract stakeContract{

   mapping(address => uint256)public s_balances;
   function stake(uint256 amount, address token)external returns(bool){

      s_balances[msg.sender] = s_balances[msg.sender] + amount;
      //call the transfer function of an ERC20 token 
      bool success = IERC20(token).transferFrom(msg.sender,address(this),amount);
      if(!success) revert transferfaild();
     return success;

   
   }

} 