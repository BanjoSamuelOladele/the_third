
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "./IWizToken.sol";


contract WizardToken is IWizToken {

    string private name;
    string private symbol;
    uint private decimal;
    address private owner;
    uint private _totalSupply;

    mapping (address => uint) private savings;

    error NOT_OWNER_ERROR();
    error INSUFFICIENT_AMOUNT_ERROR();
    error ADDRESS_ZERO_ERROR();


    constructor(string memory _name, string memory _symbol, uint _decimal){
        owner = msg.sender;
        name = _name;
        symbol = _symbol;
        decimal = _decimal;
    }


    function totalSupply() external view returns (uint){
        return _totalSupply;
    }


    function checker(address to, uint amount) private view  {
        if (msg.sender == address(0)) revert ADDRESS_ZERO_ERROR();
        if (savings[msg.sender] < (amount * calculateDecimals())) revert INSUFFICIENT_AMOUNT_ERROR();
        if (address(to) == address(0)) revert ADDRESS_ZERO_ERROR();
    }

    function balanceOf(address addr) external view returns (uint){
        return savings[addr];
    }

    function onlyOwner() private view returns(bool){
        return  msg.sender == owner;
    }

    function calculateDecimals() private view returns (uint){
        return 10 ** decimal;
    }

    function transfer(address to, uint amount) external returns (bool){
        checker(to, amount);
        savings[msg.sender] = savings[msg.sender] - (amount * calculateDecimals());
        savings[to] = savings[to] + (amount * calculateDecimals());
        return true;
    }

    function mint(uint amount) external {
        bool isOwner = onlyOwner();
        if (isOwner){
            _totalSupply = amount * calculateDecimals();
            savings[owner] = savings[owner] + (amount * calculateDecimals());
        }
        else revert NOT_OWNER_ERROR();  
    }

    function burn(uint amount) external {
        if (savings[msg.sender] < amount) revert INSUFFICIENT_AMOUNT_ERROR();
        savings[msg.sender] = savings[msg.sender] - (amount * calculateDecimals());
        _totalSupply = _totalSupply - (amount * calculateDecimals());
    }

}
