### 3. Compile an ERC-721 smart contract

Now, you can see the template contract, **GameItem.sol**, that includes all the required functions.

Click on the "Connect wallet" in the upper right corner, select the "Injected Web3 Provider" button,
and then select on MetaMask to connect to the MetaMask wallet (Ethereum Mainnet is the main network,
and Sepolia is the test network - connect to Sepolia).

![image-20221025152704753](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20230919141544205.png)

After you have completed writing down your smart contract, it's time to compile the smart contract. To compile, go to the "Compile" module,
choose an appropriate compiler version according to your source code, and press compile button. After successful compilation, 
an ABI and byte code for the source code will be generated. If there are some errors in your source code,
they will be displayed under the output panel in the Logger module.
You may need to carefully read the error, resolve it accordingly and compile it again.

**Make a note of the compiler version, license and optimization of your source code,
as it will be required when you validate your smart contract on Sepolia.** 

![image-20221025153740380](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221025153740380.png)
