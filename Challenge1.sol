pragma solidity ^0.6.0;

contract challange1 {
    uint256 public count;
    mapping (uint256 => Person) personMapping;
    struct Person {
        string name;
        address userAddress;
        uint256 age;
    }
    constructor() public {
        count = 0;
    }
    function addPerson(string calldata _name, uint256 _age) external {
        personMapping[count].name = _name;
        personMapping[count].age = _age;
        personMapping[count].userAddress = msg.sender;
        count = count +1;
    }
    function getAge(uint256 _index) view external returns (uint256 _age){
        _age = personMapping[_index].age;
    }
    function getName(uint256 _index) view external returns (string memory _name){
        _name = personMapping[_index].name;
    }
    function getuserAddress(uint256 _index) view external returns (address _address){
        _address = personMapping[_index].userAddress;
    }
}
