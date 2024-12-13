#!/bin/bash
echo "Initializing Studio Blockchain Network..."

# Create data directory
mkdir -p ~/studio-testnet/node/data

# Create password file
echo "password123" > ~/studio-testnet/node/password.txt

# Create private key file
echo "3bbf2c49f283d6c5d6c5f1d57e722ae5df5ebebd85b0cbf15696190e95e2946c" > ~/studio-testnet/node/private.key

# Import the account
echo "Importing validator account..."
geth --datadir ~/studio-testnet/node/data account import --password ~/studio-testnet/node/password.txt ~/studio-testnet/node/private.key

# Save the address
echo "0x9A6BbB68Bcae4AEf48C1B0F453Ca5E91B59646f8" > ~/studio-testnet/node/address.txt

# Clean up private key file
rm ~/studio-testnet/node/private.key

# Create genesis file
cat > ~/studio-testnet/node/genesis.json << 'EOF'
{
  "config": {
    "chainId": 2023,
    "homesteadBlock": 0,
    "eip150Block": 0,
    "eip155Block": 0,
    "eip158Block": 0,
    "byzantiumBlock": 0,
    "constantinopleBlock": 0,
    "petersburgBlock": 0,
    "istanbulBlock": 0,
    "berlinBlock": 0,
    "clique": {
      "period": 1,
      "epoch": 30000
    }
  },
  "difficulty": "1",
  "gasLimit": "30000000",
  "extradata": "0x00000000000000000000000000000000000000000000000000000000000000009A6BbB68Bcae4AEf48C1B0F453Ca5E91B59646f80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
  "alloc": {
    "0x9A6BbB68Bcae4AEf48C1B0F453Ca5E91B59646f8": {
      "balance": "100000000000000000000000000"
    }
  }
}
EOF

# Initialize the genesis block
echo "Initializing blockchain with genesis block..."
geth --datadir ~/studio-testnet/node/data init ~/studio-testnet/node/genesis.json

echo "Network initialization complete!"
