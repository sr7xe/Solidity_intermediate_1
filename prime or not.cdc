// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract PrimeCheck {
    function testRequireIsPrime(uint _num) public pure returns (string memory) {
        
        require(_isPrime(_num), "Number is not prime");
        return "It is a prime number";
    }

    function testRevertIfNotPrime(uint _num) public pure returns (string memory) {
       
        if (!_isPrime(_num)) {
            revert("Number must be prime");
        }
        return "It is a prime number";
    }
    
    function _isPrime(uint _num) internal pure returns (bool) {
        if (_num < 2) {
            return false;
        }
        for (uint i = 2; i * i <= _num; i++) {
            if (_num % i == 0) {
                return false;
            }
        }
        return true;
    }

    uint public Number = 13;

    function testAssertIsPrime() public view returns (string memory) {
       
        assert(_isPrime(Number));
        return "Number is indeed prime";
    }
}
