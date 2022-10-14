// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/mockERC20.sol";

import "../lib/forge-std/lib/ds-test/src/test.sol";
import "../lib/forge-std/src/Test.sol";
import "../src/stakeContract.sol";

contract stakeContractTest is Test{
     
   stakeContract public stakecontract;
   mockERC20 public token;
   uint256 public constant AMOUNT = 1e18;

   function setUp()public{
    stakecontract = new stakeContract();
    token = new mockERC20();
   }
   function testStakingTokens()public{
    
      token.approve(address(stakecontract),AMOUNT);
      bool success = stakecontract.stake(AMOUNT,address(token)); 
        assertTrue(success);
   }

}
