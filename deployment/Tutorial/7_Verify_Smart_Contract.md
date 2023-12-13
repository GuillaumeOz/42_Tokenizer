### 7. Verify a Smart Contract

#### 7.1. Verify the contract through the Etherscan web page

To verify a smart contract, you need to visit [EtherScan](https://sepolia.etherscan.io/)
and search for the deployed smart contract using the contract address, or you can click the highlighted button shown in the figure below.

![image-20221026145612886](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026145612886.png)

Click on the verify and publish link shown under the contract section.

![image-20221026145804190](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026145804190.png)

Once you click on the verify and publish link, you will be asked for the following:

- Contract Address: The address of a deployed smart contract that you want to verify

- Compiler Type: Either you want to verify a single file or multiple files

- Compiler Version: The compiler version that you used to compile the smart contract

- License: Open-source license type that you used for your source code

![image-20221026145918989](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026145918989.png)

After that, you need to paste the flattened file you created in step 5,
and make sure that Optimization is on or off during the compilation process,
click OK, and your smart contract will be verified.

![image-20221026150104735](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026150104735.png)

If there are no issues with your smart contract, it would be verified,
and you'll be able to see an image similar to the one that is shown below.


![image-20221026150231798](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026150231798.png)

Your smart contract is verified.

#### 7.2. Verify the contract through Etherscan API
If you don't want to use the above method, you can also use the API method to verify the contract.

Activate the @chainide/etherscan-verifier plugin from the "PLUGIN MANAGER".

![image-20221027103935634](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027103935634.png)


Click the @chainide/etherscan-verifier plugin in the right column, click the jump icon to go to the etherscan official website

![image-20221027110746690](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027110746690.png)

Select Login or Register on the login page

![image-20221027111355382](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027111355382.png)

Select API Keys

![image-20221027111522996](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027111522996.png)

Click add

![image-20221027111608852](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027111608852.png)

App Name,  enter a name you like and click the "Create New API Key" button.

![image-20221027111744468](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027111744468.png)

In this way, your API Key Token will be generated (be careful not to show it to others, only for your own use); click the icon to copy

![image-20221027111938619](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027111938619.png)

Paste the copied address in the "Etherscan Api Key" field

![image-20221027112048284](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027112048284.png)

Copy the contract address you want to verify 

![image-20221027112115438](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027112115438.png)

After pasting, select "GameItem" in Compiled Contracts, then click the "Verify" button.

![image-20221027112157203](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027112157203.png)

Verification succeeded!

![image-20221027112411803](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221027112411803.png)

Your smart contract has been verified successfully. Congratulations; you have completed all the content of this tutorial!
