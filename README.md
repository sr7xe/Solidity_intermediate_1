# PrimeCheck Solidity Contract

The `PrimeCheck` contract is a Solidity smart contract designed for the Ethereum blockchain. It provides functionality to check if a given number is prime. The contract includes methods for requiring a number to be prime, reverting transactions if a number is not prime, and asserting the primality of a predefined number.

## Features

- **Check Primality**: Users can input a number to check if it is prime.
- **Revert If Not Prime**: Functionality to revert the transaction if the number is not prime, saving gas for the caller.
- **Require Prime**: A method that requires a number to be prime; otherwise, it throws an error.
- **Assert Prime**: A predefined number in the contract is asserted to be prime, demonstrating the use of `assert` in Solidity for internal checks.

## Functions

### `testRequireIsPrime(uint _num)`

Checks if the input number is prime. If the number is not prime, it throws an error message "Number is not prime".

#### Parameters

- `_num`: The number to check for primality.

#### Returns

- A string message confirming the number is prime.

### `testRevertIfNotPrime(uint _num)`

Checks if the input number is prime. If the number is not prime, it reverts the transaction.

#### Parameters

- `_num`: The number to check for primality.

#### Returns

- A string message confirming the number is prime.

### `_isPrime(uint _num)`

Internal function to check if a number is prime.

#### Parameters

- `_num`: The number to check for primality.

#### Returns

- A boolean indicating if the number is prime.

### `testAssertIsPrime()`

Asserts that a predefined number in the contract is prime.

#### Returns

- A string message confirming the predefined number is prime.

## How to Deploy

1. **Install Truffle**: Ensure that Truffle is installed on your machine. If not, install it using npm:

    ```shell
    npm install -g truffle
    ```

2. **Clone the Repository**: Clone this repository to your local machine.

    ```shell
    git clone <repository-url>
    ```

3. **Install Dependencies**: Navigate into the cloned repository and install the required npm packages.

    ```shell
    npm install
    ```

4. **Compile the Contract**: Compile the Solidity contract.

    ```shell
    truffle compile
    ```

5. **Deploy**: Deploy the contract to your desired network using Truffle.

    ```shell
    truffle migrate --network <network-name>
    ```

## Testing

To test the functionality of the `PrimeCheck` contract, you can use Truffle's built-in testing framework. Write your tests in JavaScript or Solidity and place them in the `test` folder of your project.

