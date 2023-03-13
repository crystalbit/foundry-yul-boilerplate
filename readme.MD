This is boilerplate repository to write and test yul contracts and contracts in bytecode in foundry  

TODO: make easy deploy process here

Put contracts in yul in `yul/` folder  
Put raw bytecode into `bytecode/` folder (bytecode needed only on first line)  

To test:  
as usual, `forge test`  

Compile yul contract:  
`solc --strict-assembly yul/basic.yul`  

Or with shorter output:  
`solc --strict-assembly yul/basic.yul --bin | tail -1`  

See test/Basic.t.sol to see how to test yul and bytecode contracts  
You need to import `YulDeployer` or `BytecodeDeployer` and use them to deploy contracts  

Gas report:  
`forge snapshot && cat .gas-snapshot && rm .gas-snapshot`  
