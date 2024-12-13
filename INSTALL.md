# Installation Guide for Studio Chain Testnet Node

This guide provides detailed instructions for setting up a Studio Chain Testnet node.

## System Requirements

- Ubuntu 20.04 or later
- Go 1.21.6 or later
- 4GB RAM minimum (8GB recommended)
- 50GB disk space minimum

## Step 1: Install Go Ethereum

```bash
# Download and install Geth 1.13.14-stable
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y ethereum

# Verify installation
geth version  # Should show: Version: 1.13.14-stable
```

## Step 2: Setup Node Directory

```bash
# Create node directory
mkdir -p ~/studio-testnet/node
cd ~/studio-testnet/node

# Copy configuration files
cp genesis.json.example genesis.json
cp address.txt.example address.txt
cp password.txt.example password.txt
```

## Step 3: Configure Node

1. Generate or import your validator account:
```bash
# Generate new account
geth account new --datadir data

# Or import existing private key
echo "your-private-key" > private.key
geth --datadir data account import private.key
rm private.key  # Remove private key file after import
```

2. Update configuration files:
- Add your validator address to `address.txt`
- Set a secure password in `password.txt`
- Update `genesis.json` with your validator address in the extradata field

## Step 4: Initialize Blockchain

```bash
# Make init script executable
chmod +x init.sh

# Run initialization
./init.sh
```

## Step 5: Start Node

```bash
# Make start script executable
chmod +x start.sh

# Start the node
./start.sh
```

## Configuration Details

### Network Parameters
- Chain ID: 240240
- Network ID: 240240
- Block Time: 1 second
- Gas Limit: 30000000

### Node Settings
- RPC Port: 8545
- WebSocket Port: 8546
- P2P Port: 30303

### Transaction Pool Configuration
- Price Limit: 0
- Account Slots: 16
- Global Slots: 16384
- Account Queue: 64
- Global Queue: 1024

## Security Considerations

1. Firewall Configuration
```bash
# Allow P2P port
sudo ufw allow 30303

# If exposing RPC/WS, restrict to trusted IPs
sudo ufw allow from trusted-ip to any port 8545
sudo ufw allow from trusted-ip to any port 8546
```

2. Secure Storage
- Keep private keys secure
- Use strong passwords
- Regularly backup node data

## Troubleshooting

1. Node not starting
- Check logs: `tail -f ~/studio-testnet/node/data/geth.log`
- Verify port availability: `netstat -tulpn | grep -E '8545|8546|30303'`

2. Sync issues
- Check network connectivity
- Verify genesis block hash
- Ensure correct chain ID

## Maintenance

1. Regular backups
```bash
# Stop node
pkill geth

# Backup data
tar -czf node-backup.tar.gz data/

# Restart node
./start.sh
```

2. Updates
- Monitor for new Geth versions
- Test updates on testnet first
- Keep configuration files backed up

## Support

For technical support:
1. Check the main README
2. Review logs for errors
3. Open an issue on GitHub with:
   - Error messages
   - Log outputs
   - System information
