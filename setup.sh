  GNU nano 6.2                               setup.sh                                        

if [ ! -x "$0" ]; then
  chmod +x "$0"
fi

# Quick setup guide for Soundness Testnet

# Step 1: Update your system
echo "Updating your system..."
sudo apt update && sudo apt upgrade -y

# Step 2: Install essential tools
echo "Installing essential tools..."
sudo apt update && sudo apt install build-essential -y
sudo apt update && sudo apt install pkg-config -y
sudo apt update && sudo apt install -y pkg-config libssl-dev

# Step 3: Install Rust
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Step 4: Source the bashrc file to apply changes
echo "Source your bashrc..."
source ~/.bashrc

# Step 5: Install Soundness CLI
echo "Installing Soundness CLI..."
curl -sSL raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install |>
# Step 6: Source bashrc again to reflect the Soundness CLI changes
echo "Source bashrc again..."
source ~/.bashrc

# Step 7: Install Soundness using the CLI
echo "Installing Soundness..."
soundnessup install

# Step 8: Generate your private key
echo "Generating your private key..."
soundness-cli generate-key --name my-key
