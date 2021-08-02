pragma solidity ^0.8;

contract HolaMundo {
    
    string frase;
    address payable owner;
    
    constructor (string memory _frase) {
        owner = payable(msg.sender);
        frase=_frase;
    }
    
    function setFrase(string memory _frase) public {
        if (owner==msg.sender) {
            frase=_frase;
        }
    }
    
    function getFrase() public view returns (string memory) {
        return frase;
    }
    
    function giveMeMoney() public payable {
        
    }
    
    function takeAllTheMoney() public {
        if(owner==msg.sender) {
            owner.transfer(address(this).balance);
        } else {
            revert("Usted no es el dueno");
        }
    }
}

