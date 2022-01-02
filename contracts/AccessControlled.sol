pragma solidity >=0.5.9;

contract AccessControlled {

    bool public isVoting;

    constructor() public {
        isVoting = false;
    }

    modifier isVotingOpen() {
        require(isVoting == true, "Voting process is not open");
        _;
    }

    
}