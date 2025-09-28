// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ProofOfExistence {

    address public owner;

    mapping(bytes32 => uint256) public proofs;

    event DocumentNotarized(address indexed caller, bytes32 indexed hash, uint256 timestamp);

    constructor() {
        owner = msg.sender;
    }

    function notarizeDocument(bytes32 _documentHash) public {
        
        require(proofs[_documentHash] == 0, "Document already notarized.");

        proofs[_documentHash] = block.timestamp;

        emit DocumentNotarized(msg.sender, _documentHash, block.timestamp);
    }

    function verifyDocument(bytes32 _documentHash) public view returns (bool) {
        return proofs[_documentHash] > 0;
    }
}
