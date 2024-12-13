# Studio Chain Testnet Node

This repository contains the configuration and setup files for running a Studio Chain Testnet node. The node is based on Geth with custom configurations for optimal performance.

## Network Details

- Chain ID: 240240
- RPC URL: https://rpc.studio-blockchain.com
- WebSocket URL: wss://ws.studio-blockchain.com
- Network ID: 240240

## Required Files

The following files are required but not included in the repository for security reasons. Example templates are provided:

1. `genesis.json` - Chain genesis configuration
   - See `genesis.json.example` for the structure
   - Contains initial chain configuration and validator setup

2. `address.txt` - Validator address
   - See `address.txt.example` for the format
   - Contains the Ethereum address of the validator

3. `password.txt` - Validator account password
   - See `password.txt.example` for the format
   - Used to secure the validator account

## Setup Scripts

1. `init.sh` - Initializes the blockchain
   - Creates required directories
   - Sets up validator account
   - Initializes genesis block

2. `start.sh` - Starts the node with proper configuration
   - Configures RPC and WebSocket endpoints
   - Sets up mining and validator settings
   - Configures transaction pool

## Requirements

- Go 1.19 or later
- 4GB RAM minimum (8GB recommended)
- 50GB disk space minimum

## Installation

1. Clone the repository:
```bash
git clone https://github.com/StudioPlatforms/studio-chain-testnet.git
cd studio-chain-testnet
```

2. Create required files from examples:
```bash
cp genesis.json.example genesis.json    # Then edit with your settings
cp address.txt.example address.txt      # Add your validator address
cp password.txt.example password.txt    # Set your secure password
```

3. Make scripts executable:
```bash
chmod +x init.sh start.sh
```

4. Initialize the blockchain:
```bash
./init.sh
```

5. Start the node:
```bash
./start.sh
```

## Node Configuration

The node is configured with the following settings:

- HTTP RPC enabled on port 8545
- WebSocket enabled on port 8546
- Full transaction APIs enabled
- Custom gas and transaction pool settings
- Proof of Authority consensus
- Optimized for performance

## Security Notes

- Never commit sensitive files (genesis.json, address.txt, password.txt)
- Keep your validator private key secure
- Use strong passwords for validator accounts
- Configure firewalls to protect RPC/WS ports

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

MIT License - see LICENSE file for details

## Contact

For questions and support, please open an issue in the GitHub repository.
