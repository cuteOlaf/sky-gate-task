// SPDX-License-Identifier: <>

pragma solidity ^0.8.0;

/**
* @dev A simple smart contract written for a test task
* dedicated to Bartłomiej Gubała(bartek@skygate.recruitee.com), recruiter of SkyGate
*/
contract SkyGate {
    // First name of the candidate (actually, it's me!)
    string private _name = "Oliver";

    // Surname of the candidate
    string private _surname = "Lim";

    // Age of the candidate
    uint8 private _age = 27;

    // Candidate's favorite number
    uint256 private _favoriteNumber = 777;

    /**
     * @dev returns the candidate's information - all in one
     */
     function getCandidateInfo() external view returns (string memory name, string memory surname, uint8 age, uint256 favoriteNumber) {
         name = _name;
         surname = _surname;
         age = _age;
         favoriteNumber = _favoriteNumber;
     }

    /**
     * @dev gets the candidate's name
     */
    function name() public view returns (string memory) {
        return _name;
    }

    /**
     * @dev gets the candidate's surname
     */
    function surname() public view returns (string memory) {
        return _surname;
    }

    /**
     * @dev gets the candidate's age
     */
    function age() public view returns (uint8) {
        return _age;
    }

    /**
     * @dev gets the candidate's favorite number
     */
    function favoriteNumber() public view returns (uint256) {
        return _favoriteNumber;
    }

    /**
     * @dev gets the doubled value of the input data
     * using SafeMath is highly recommended to avoid the overflow in multiplication
     */
    function recuriterNumber(uint256 number) external pure returns (uint256 original, uint256 doubled) {
        original = number;
        doubled = number * 2;
    }
}