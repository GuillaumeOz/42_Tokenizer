### 5. NFT Minting

To mint a digital collection, you need to use the **awarditem function** and use the wallet address of the person you want to airdrop NFT. 
The token URL input field is the corresponding metadata address. Before Minting, you need to generate metadata,
and metadata is stored on decentralized storage that ensures the immutability of the NFT.
To this end, ChainIDE provides two ways to generate metadata.

#### 5.1. Use ChainIDE's built-in HTML to upload metadata to IPFS and get CID.

ChainIDE has prepared a built-in HTML template to upload metadata to IPFS.
Under the explorer panel, you can find the "index.html" file,
and click the preview button on the right side to preview the output of the HTML file,
fill in the required information there and click the "Submit" button. 

![](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/html_preview.png)

After you click the "Submit" button, you will get a CID.
When clicking on the CID and encountering 504, we need to use the method of 5.2 to generate metadata.

![image-20221026143157760](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026143157760.png)

#### 5.2. Use [NFT.STORAGE](https://nft.storage/), a website dedicated to uploading files to IPFS
(Other uploading IPFS sites are also available, such as [Pinata](https://www.pinata.cloud/))
First, prepare the images to be uploaded, such as the ChainIDE logo.

Then enter [NFT.STORAGE](https://nft.storage/), a webpage dedicated to uploading files to IPFS.

Click "Upload" - "Choose File" - select an image and click Upload

![ChainIDE_Logo](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/ChainIDE_Logo.png)

![image-20221026114612844](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026114612844.png)

After the upload is successful, click the CID of the image to see the image stored on IPFS (CID is used to point to the data stored in IPFS).

![image-20221026114800846](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026114800846.png)

Next, we need to generate the JSON format file of metadata.

Metadata format:

```json
{
    "title": "Token Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifies the asset to which this token represents"
        },
        "decimals": {
            "type": "integer",
            "description": "The number of decimal places that the token amount should display - e.g. 18, means to divide the token amount by 1000000000000000000 to get its user representation."
        },
        "description": {
            "type": "string",
            "description": "Describes the asset to which this token represents"
        },
        "image": {
            "type": "string",
            "description": "A URI pointing to a resource with mime type image/* representing the asset to which this token represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive."
        },
        "properties": {
            "type": "object",
            "description": "Arbitrary properties. Values may be strings, numbers, object or arrays."
        }
    }
}
```

Let's create a new json file locally, such as: ChainIDE_Logo.json

```json
{
    "name": "ChainIDE",
    "description": "ChainIDE Logo",
    "image": "ipfs://bafkreid2t3wk4gd3xgrg4uqt2jndr5ocwycizjdqyg4tbqayjyobmyun2a",
    "properties": {
        "initials": "c",
        "rarity": "common"
    }
}
```

> name: Fill in the name of the NFT
>
> description: Fill in the introduction of NFT
>
> image: Fill in the image link of the NFT, the format is ipfs:// + CID
>
> properties: Fill in the characteristics of the NFT, the number is not limited
>
> After creation, upload ChainIDE_Logo.json to IPFS.

![image-20221026114612844](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026114612844.png)

After uploading successfully, copy the CID of ChainIDE_Logo.json: bafkreicgankcckmhs7vkcoqq6frzaqz7m7rzz5rqthgmtnxpehhbdivmgi

![image-20221026141422598](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026141422598.png)

#### 5.3. After the metadata is uploaded, return to ChainIDE for mint

Select the **awarditem function**. The player is the address where you want to airdrop the NFT,
tokenURI is the metadata link (the format of the IPFS link is uniformly ipfs://+CID, and the CID of method 2 is used here,
so the link of the ChainIDE Logo is [ipfs://bafkreicgankcckmhs7vkcoqq6frzaqz7m7rzz5rqthgmtnxpehhbdivmgi](ipfs://bafkreicgankcckmhs7vkcoqq6frzaqz7m7rzz5rqthgmtnxpehhbdivmgi), click the "Submit" button.

![image-20221026143329226](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026143329226.png)

After successful minting, you can view your NFT on the OpenSea NFT market. 
Visit [https://testnets.opensea.io/assets/sepolia/0x0dfc512e945b8ebf6912fb6743613c3eb4bf81e3/1](https://testnets.opensea.io/assets/sepolia/0x0dfc512e945b8ebf6912fb6743613c3eb4bf81e3/1) 
(replace 0x0dfc512e945b8ebf6912fb6743613c3eb4bf81e3 with your contract address, 
which can be copied using the method below), connect to your MetaMask wallet, and make sure the selected network is Sepolia, 
you can see NFTs that have been minted successfully on the OpenSea NFT marketplace.

![image-20221026143850860](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026143850860.png)


![image-20221026144009072](https://d3gvnlbntpm4ho.cloudfront.net/ERC721+deployment+on+Goerli+Etherum/goerli721.assets/image-20221026144009072.png)

#### 5.4. Tokenizer BONUS : Multisignature System

1. **Add Signers**: Use the `addSigner` function to add addresses authorized to approve the minting of an NFT, if necessary.

2. **Start Minting**: Call the `mintCard` function, specifying the token URI (link to the NFT metadata) and the number of signatures required for approval.

3. **Minting Approval**: Each authorized signer must call the `approveMint` function to approve the creation of the NFT, specifying the token ID.

4. **Finalize the Minting**: Once the required number of approvals have been obtained, call the `finalizeMint` function to finalize the creation of the NFT. You must specify the token ID and the address of the recipient (player).
