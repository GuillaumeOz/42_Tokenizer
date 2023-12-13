// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

// Importation des contrats ERC721 et Ownable d'OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Declaration du contrat principal ForTyTwo
contract ForTyTwo is ERC721URIStorage, Ownable {
    uint256 private _nextTokenId; // Compteur pour les IDs uniques des NFTs
    mapping(address => bool) public isSigner; // Liste des adresses autorisees ￠ approuver la frappe de NFTs
    address[] public signerAddresses; // Tableau des adresses des signataires
    mapping(uint256 => uint256) public approvalsNeeded; // Nombre d'approbations necessaires pour chaque NFT
    mapping(uint256 => mapping(address => bool)) public approvals; // Suivi des approbations par token ID

    // Constructeur du contrat
    constructor() ERC721("42x42", "FTT") Ownable(msg.sender) {
        isSigner[msg.sender] = true; // Le deploiement du contrat devient signataire
        signerAddresses.push(msg.sender); // Ajoute l'adresse du deploiement a la liste des signataires
    }

    // Permet au proprietaire d'ajouter un nouveau signataire
    function addSigner(address signer) public onlyOwner {
        isSigner[signer] = true;
        signerAddresses.push(signer);
    }

    // Permet a un signataire d'approuver la creation d'un NFT
    function approveMint(uint256 tokenId) public {
        require(isSigner[msg.sender], "Not an authorized signer");
        approvals[tokenId][msg.sender] = true;
    }

    // Demarre le processus de frappe d'un NFT, avec les approbations requises
    function mintCard(
        string memory tokenURI,
        uint256 signaturesRequired
    ) public onlyOwner returns (uint256) {
        uint256 tokenId = _nextTokenId++;
        approvalsNeeded[tokenId] = signaturesRequired;
        _setTokenURI(tokenId, tokenURI);
        return tokenId;
    }

    // Finalise la creation d'un NFT apres avoir recu les signatures necessaires
    function finalizeMint(uint256 tokenId, address player) public {
        require(approvalsNeeded[tokenId] > 0, "Mint not initiated");
        uint256 count = 0;
        for (uint256 i = 0; i < signerAddresses.length; i++) {
            if (approvals[tokenId][signerAddresses[i]]) {
                count++;
            }
        }
        require(count >= approvalsNeeded[tokenId], "Not enough signatures");
        _mint(player, tokenId);
    }
}
