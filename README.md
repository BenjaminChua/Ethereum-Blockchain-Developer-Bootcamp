# Ethereum Blockchain Developer

truffle develop

truffle console --network test
migrate
debug <txn hash>

# Deployment
truffle dashboard
truffle migrate --network dashboard

# verify contract on etherscan
npm i -D truffle-plugin-verify
truffle run verify <Contract Name> --network goerli

# console log: ganache
npm i @ganache/console.log

# openzeppelin contracts
npm i @openzeppelin/contracts