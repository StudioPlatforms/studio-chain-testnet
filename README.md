# Studio Chain Testnet Node

A Geth-based implementation of Studio Chain Testnet with custom configurations for optimal performance.

## Repository Structure

```
.
├── config/                 # Configuration templates
│   ├── genesis.json.example    # Genesis block configuration
│   ├── address.txt.example     # Validator address template
│   └── password.txt.example    # Account password template
│
├── scripts/               # Management scripts
│   ├── init.sh               # Chain initialization script
│   └── start.sh              # Node startup script
│
├── docs/                  # Documentation
│   ├── ARCHITECTURE.md       # Technical architecture details
│   └── INSTALL.md           # Installation guide
│
├── LICENSE               # MIT License
└── README.md            # This file
```

## Quick Start

1. Install Geth v1.13.14-stable:
```bash
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y ethereum
```

2. Clone the repository:
```bash
git clone https://github.com/StudioPlatforms/studio-chain-testnet.git
cd studio-chain-testnet
```

3. Set up configuration:
```bash
# Create config files from templates
cp config/genesis.json.example genesis.json
cp config/address.txt.example address.txt
cp config/password.txt.example password.txt

# Edit with your settings
nano genesis.json    # Update genesis configuration
nano address.txt     # Add validator address
nano password.txt    # Set secure password
```

4. Initialize and start the node:
```bash
# Make scripts executable
chmod +x scripts/init.sh scripts/start.sh

# Initialize chain
./scripts/init.sh

# Start node
./scripts/start.sh
```

## Network Details

- Chain ID: 240240
- RPC URL: https://rpc.studio-blockchain.com
- WebSocket URL: wss://ws.studio-blockchain.com
- Block Time: 1 second
- Gas Limit: 30000000

## Documentation

- [Installation Guide](docs/INSTALL.md) - Detailed setup instructions
- [Architecture](docs/ARCHITECTURE.md) - Technical architecture and design

## Features

- Based on Geth v1.13.14-stable
- Proof of Authority (PoA) consensus
- Optimized transaction pool settings
- Full JSON-RPC and WebSocket API support
- Custom gas and mining configurations
- Comprehensive monitoring capabilities

## Requirements

- Ubuntu 20.04 or later
- Go 1.21.6 or later
- 4GB RAM minimum (8GB recommended)
- 50GB disk space minimum

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

## Support

For questions and support, please open an issue in the GitHub repository.
