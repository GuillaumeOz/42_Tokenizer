### 2. Write down an ERC-721 Smart contract

You need to write down all the required functions that you want to implement in your [ERC-721](https://eips.ethereum.org/EIPS/eip-721) smart contract. 
A general ERC-721 smart contract has the following functions.

-   `balanceOf()`: return by_ The number of NFTs held by the owner

-   `ownerOf()`: returns the address of the token holder

-   `approve():`grant address_ To has_ Token ID control. Approval event needs to be triggered after the method is successful

-   `setApprovalForAll()`: Grant address_ The operator has the control of all NFTs, and the approvalforall event needs to be triggered after success

-   `getApproved()` : Get the approved address for a single NFT

-   `isApprovedForAll()`: Query if an address is an authorized operator for another address

-   `safeTransferFrom()`: To transfer the ownership of an NFT, a successful transfer operation must initiate a transfer event

-   `transferFrom()`: Used to transfer NFTs. After the method succeeds, it needs to trigger the transfer event. The caller confirms himself_ To address can receive NFT normally, otherwise, this NFT will be lost. When this function is implemented, it needs to check whether it meets the judgment conditions

The ChainIDE team has prepared the complete ERC-721 showcase including all the required functions,
you may use that built-in template and add/delete functions according to your requirements.
