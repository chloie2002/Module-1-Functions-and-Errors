# Functions and Errors (Smart Contract Voting Sytem)

The "Functions and Errors" Solidity program explains the fundamental syntax and features of the Solidity programming language. This program is meant to be a jumping off point for people who are unfamiliar with Solidity and want to get a sense of how it functions.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a single function that returns the string "Smart Contract". This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CruzVoting.sol). Copy and paste the following code into the file:


```javascript 
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;
    uint256 public constant MAX_VOTES = 100;

    function vote() public {
        require(!hasVoted[msg.sender], "You have already voted");
        require(totalVotes < MAX_VOTES, "Maximum number of votes reached");
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile CruzContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Vote" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the assertExample function. Click on the "assertExample" once done place the value of a which is 50 and b is 25 that equally dividing into 2 next click the hasVoted and paste it the address click call that the message is bool: true next the MAX_VOTES click the tab and will gives the maximum votes reach which is 100 the revertExample to ensure the the function reverts with the specified error message.

## Authors

Chloie Jane T. Cruz 
8215697@ntc.edu.ph

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
