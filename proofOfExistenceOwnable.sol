pragma solidity ^0.8;

contract ProofOfExistence {
    
    mapping(bytes32=>uint) public proofs;
    address public owner;
    
    modifier onlyOwner {
        require(msg.sender==owner,"Solo puede ejecutarlo el owner");
    }
    
    constructor() {
        owner= msg.sender;
    }
    
    function addHash(bytes32 _hash) onlyOwner public {
        require(proofs[_hash]==0,"Hash ya agregado");
        proofs[_hash] = block.number;
    }
    
}
