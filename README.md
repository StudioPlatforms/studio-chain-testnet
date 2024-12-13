# Studio Chain Testnet Node

This repository contains the Ethereum-based node implementation for Studio Chain Testnet, a custom blockchain network optimized for performance and scalability.

## Features

- Custom-optimized Ethereum fork
- Proof of Authority (PoA) consensus mechanism
- Optimized gas costs and block time
- Full Ethereum compatibility
- JSON-RPC API support

## Required Files

The following files are required but not included in the repository for security reasons. Contact the project maintainers to obtain these files:

### genesis.json
The genesis file containing the initial state and parameters of the blockchain:
- Initial validators
- Chain configuration
- Network parameters
- Initial account balances

### password.txt
Contains the password for the validator account. Format:
```
your-secure-password
```

### address.txt
Contains the validator's Ethereum address. Format:
```
0xyour-validator-address
```

### Scripts
- `init.sh`: Initializes the blockchain with the genesis file
- `start.sh`: Starts the node with the correct parameters

## Requirements

- Go 1.19 or later
- 4GB RAM minimum (8GB recommended)
- 50GB disk space minimum

## Setup

1. Clone the repository:
```bash
git clone https://github.com/StudioPlatforms/studio-chain-testnet.git
cd studio-chain-testnet
```

2. Obtain the required files (genesis.json, password.txt, address.txt) from project maintainers

3. Place the files in the root directory

4. Make scripts executable:
```bash
chmod +x init.sh start.sh
```

5. Initialize the node:
```bash
./init.sh
```

6. Start the node:
```bash
./start.sh
```

## Network Details

- RPC URL: https://rpc.studio-blockchain.com
- WebSocket URL: wss://ws.studio-blockchain.com
- Chain ID: [Your Chain ID]

## Development

### Running a Development Node
```bash
# Start a development node
geth --dev --datadir ./data

# Attach to running node
geth attach ./data/geth.ipc
```

### Testing
```bash
# Run test suite
go test ./...
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## Security

The following files contain sensitive information and should never be committed to the repository:
- genesis.json
- password.txt
- address.txt
- geth/ directory (contains blockchain data)

## License

MIT License - see LICENSE file for details

## Contact

For questions and support, please open an issue in the GitHub repository.
