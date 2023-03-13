Basic yul contract with tests in foundry  

To test:  
`forge test`  

Compile yul version:  
`solc --strict-assembly yul/basic.yul`  

Or shorter:  
`solc --strict-assembly yul/basic.yul --bin | tail -1`  

Gas report:  
`forge snapshot && cat .gas-snapshot && rm .gas-snapshot`  
