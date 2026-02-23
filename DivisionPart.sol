// License
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity Version
pragma solidity 0.8.24;

// Contract
contract DivisionPart {
    // Variable
    uint256 public result = 10;// [0 - 2^256-1]

    // Modifier
     modifier isEven(uint256 num1_, uint256 num2_) {
        if (num1_ % num2_ != 0) revert();
        _;
    }

    // Events
    event Division(uint256 number1, uint256 number2, uint256 result);
    

    // External Functions
    function division(uint256 num1_, uint256 num2_) public isEven(num1_, num2_) returns(uint256 result_) {
    result_ = division_logic(num1_, num2_);

    emit Division(num1_, num2_, result);
    }

    // Internal Functions
    function division_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_) {
        require(num2_ > 0, "The second number should be larger than 0");
        result_ = num1_ / num2_;
    }

    }

