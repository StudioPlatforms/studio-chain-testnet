# Studio Chain Testnet Node

This repository provides the configuration and setup files for running a validator node on Studio Chain Testnet. Our chain is based on Geth with custom configurations for optimal testnet performance.

## What This Repository Provides

1. **Chain Configuration**
   - Genesis block configuration template
   - Network parameters (Chain ID, gas limits, etc.)
   - PoA consensus settings

2. **Validator Setup**
   - Scripts to initialize and run a validator node
   - Templates for validator account configuration
   - Network connection settings

3. **Documentation**
   - Step-by-step setup instructions
   - Technical architecture details
   - Security guidelines

## Becoming a Validator

To become a validator on Studio Chain Testnet:

1. **Prerequisites**
   - Install Go Ethereum (geth) v1.13.14-stable
   ```bash
   sudo add-apt-repository -y ppa:ethereum/ethereum
   sudo apt-get update
   sudo apt-get install -y ethereum
   ```

2. **Setup Process**
   ```bash
   # Clone this repository
   git clone https://github.com/StudioPlatforms/studio-chain-testnet.git
   cd studio-chain-testnet

   # Create validator account
   geth account new --datadir data

   # Copy and edit configuration files
   cp config/genesis.json.example genesis.json
   cp config/address.txt.example address.txt
   cp config/password.txt.example password.txt

   # Add your validator address to address.txt
   # Set your account password in password.txt
   # Update genesis.json with your validator address

   # Initialize and start node
   chmod +x scripts/init.sh scripts/start.sh
   ./scripts/init.sh
   ./scripts/start.sh
   ```

3. **Validator Requirements**
   - Minimum 4GB RAM (8GB recommended)
   - 50GB disk space
   - Stable internet connection
   - 24/7 operation capability

## Network Details

- Chain ID: 240240
- RPC URL: https://rpc.studio-blockchain.com
- WebSocket URL: wss://ws.studio-blockchain.com
- Block Time: 1 second
- Gas Limit: 30000000

## Validator Responsibilities

As a validator, you will:
1. Produce and validate blocks
2. Maintain network security
3. Process transactions
4. Keep your node operational 24/7

## Security Requirements

Validators must:
1. Secure their private keys
2. Use strong passwords
3. Configure firewalls properly
4. Keep their nodes updated
5. Monitor node performance

## Monitoring Your Node

Monitor your validator status:
```bash
# Attach to your node
geth attach data/geth.ipc

# Check if you're validating
> clique.getSigners()

# Check your node's status
> eth.mining
> eth.blockNumber
```

## Troubleshooting

Common issues and solutions:

1. Node not syncing
```bash
# Check sync status
geth attach data/geth.ipc --exec 'eth.syncing'

# Check peers
geth attach data/geth.ipc --exec 'admin.peers.length'
```

2. Not validating blocks
```bash
# Verify your address is in the validators list
geth attach data/geth.ipc --exec 'clique.getSigners()'

# Check if your node is mining
geth attach data/geth.ipc --exec 'eth.mining'
```

## Support

For validator support:
1. Check the [Installation Guide](docs/INSTALL.md)
2. Review [Architecture](docs/ARCHITECTURE.md)
3. Open an issue with:
   - Node logs
   - Configuration details
   - Error messages

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

MIT License - see LICENSE file for details
