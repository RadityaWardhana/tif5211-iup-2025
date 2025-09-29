# Project Reflection

Overall, I have gained substantial knowledge throughout this project. I believe that the goal of this project, which is to design, deploy, and verify a smart contract for proof of existence on the Sepolia testnet, has been successfully achieved. This can be seen from the fact that my contract was deployed, verified on Etherscan, and interacted with correctly, producing both true and false verification results at their respective hashes. Furthermore, the project required not only deploying the contract but also handling Sepolia ETH for transactions and gas fees, which deepened my understanding of blockchain networks.

When going back to the code, one of the most important parts I learned from was the use of

<pre markdown="1"> mapping(bytes32 => uint256) public proofs;  </pre>

This simple line allowed me to connect a document’s hash to the exact time it was notarized, making the contract efficient and easy to query. Another key section was the `require` statement in the `notarizeDocument` function:

<pre markdown="1"> require(proofs[_documentHash] == 0, "Document already notarized."); </pre>

This check ensured that the same document could not be notarized twice, which is crucial for maintaining integrity on the blockchain. Finally, by combining

<pre markdown="1"> function notarizeDocument(bytes32 _documentHash) public { ... } </pre>

with

<pre markdown="1"> function verifyDocument(bytes32 _documentHash) public view returns (bool) { ... } </pre>

I was able to create a working system where documents can be notarized and later verified reliably.

Personally, I believe could have done better if I had researched more about how smart contracts work and what they do, as well as how blockchain works in general, since this would've assisted me in making the code faster. Ultimately, creating a code for this smart contract has allowed me to grow as a programmer, and made the project a meaningful learning experience.
