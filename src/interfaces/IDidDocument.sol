pragma ton-solidity >= 0.43.0;

interface IDidDocument {

    struct DIDItem {
        uint8 status;
        uint256 issuerPubKey;
        address issuerAddr;
        string didDocument;
    }

    function newDidDocument(string didDocument) external;

    function newDidIssuerPubKey(uint256 pubKey, address issuerAddr) external;

    function deleteDidDocument() external;

    function getDid() external view returns (DIDItem);

    function getInfo() external view returns (
        address addrDidStorage,
        DIDItem didItem
    );
}
