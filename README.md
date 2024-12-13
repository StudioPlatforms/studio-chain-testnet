# Studio Chain Testnet Node

This repository contains the Ethereum-based node implementation for Studio Chain Testnet, a custom blockchain network optimized for performance and scalability.

## Features

- Custom-optimized Ethereum fork
- Proof of Authority (PoA) consensus mechanism
- Optimized gas costs and block time
- Full Ethereum compatibility
- JSON-RPC API support

## Directory Structure

```
.
├── geth/               # Geth implementation files
├── data/              # Blockchain data directory
│   └── geth/         # Geth data files
├── config/           # Configuration files
└── scripts/          # Utility scripts
```

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

2. Initialize the node:
```bash
geth init ./genesis.json
```

3. Start the node:
```bash
geth --networkid <chain-id> \
    --datadir data \
    --port 30303 \
    --http \
    --http.addr '0.0.0.0' \
    --http.port 8545 \
    --http.corsdomain '*' \
    --http.api 'eth,net,web3,txpool,debug' \
    --ws \
    --ws.addr '0.0.0.0' \
    --ws.port 8546 \
    --ws.origins '*' \
    --ws.api 'eth,net,web3,txpool,debug'
```

## Configuration

### Network Details
- Network ID: [Chain ID]
- RPC URL: https://rpc.studio-blockchain.com
- WebSocket URL: wss://ws.studio-blockchain.com

### Genesis Configuration
The genesis file includes optimized parameters for:
- Gas costs
- Block time
- Validator performance
- Initial distribution

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

## License

MIT License - see LICENSE file for details

## Contact

For questions and support, please open an issue in the GitHub repository.
