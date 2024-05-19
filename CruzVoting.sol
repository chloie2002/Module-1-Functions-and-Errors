// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;
    uint256 public constant MAX_VOTES = 100;

    function vote() public {
        require(!hasVoted[msg.sender], "You have already voted");
        require(totalVotes < MAX_VOTES, "Maximum number of votes reached");

        // Simulate voting process
        // For demonstration purposes, we're just incrementing the totalVotes counter
        totalVotes++;
        hasVoted[msg.sender] = true;
    }

    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        assert(b != 0); // Assert that 'b' is not zero
        return a / b;
    }

    function revertExample(uint256[] memory data) pure  public {
        require(data.length > 0, "Data array must not be empty");
        // Perform some operations with the data
        // If something goes wrong, revert
        revert("Something went wrong");
    }
}
