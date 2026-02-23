// License
// SPDX-License-Identifier: LGPL-3.0-only

// Solidity Version
pragma solidity 0.8.24;

// Contract
contract Calculator {
    // Variable
    uint256 public result = 10;// [0 - 2^256-1]
    
    // Modifiers
    // Checks wheter the number entered is 10 or not to proceed with the operation.
    modifier checknumber(uint256 num1_) {
        if (num1_ != 10) revert();
        _;
    }
    // Checks wheter the reminder is 1 or 0 to proceed with the operation.
    modifier checkreminder(uint256 num1_, uint256 num2_) {
        require( num2_ > 0, "The denominator ('num2_') must be greater than 0.");
        if (num1_ % num2_ != 0) revert("The reminder of the division must be 0.");
        _;
    }

    // Events
    event Addition(uint256 number1, uint256 number2, uint256 result);
    event Substraction(uint256 number1, uint256 number2, uint256 result);
    event Division(uint256 number1, uint256 number2, uint256 result);

    // External Functions
    // Addition
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = num1_ + num2_;

        emit Addition(num1_, num2_, result);
    }

    // Substraction that doesn't accept negative numbers
    function substraction(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = substraction_logic(num1_, num2_);
        
        emit Substraction(num1_, num2_, result);
    }

    // Substraction that accepts negative numbers
    function substraction2(int256 num1_, int256 num2_) public pure returns(int256 result_) {
        result_ = substraction_logic2(num1_, num2_);
    }

    // Multiplication
    function multiplier(uint num1_) public {
        result = result * num1_;
    }

    // Multiplier with modifier
    function multiplier2(uint256 num1_) public checknumber(num1_) {
        result = result * num1_;
    }

    // Division
    function division(uint256 num1_, uint256 num2_) public checkreminder(num1_, num2_) returns(uint256 result_) {
        result_ = division_logic(num1_, num2_);

        emit Division(num1_, num2_, result);
    }

    // Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_) {
        result_ = num1_ - num2_;
    }

    function substraction_logic2(int256 num1_, int256 num2_) internal pure returns(int256 result_) {
        result_ = num1_ - num2_;
    }

    // Division internal function
    function division_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_) {
        result_ = num1_ / num2_;
    }

}

