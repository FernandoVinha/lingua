curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/nodesource.gpg
echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt install nodejs
node --version
npm --version
npx dalai alpaca install 65B
sudo apt-get install build-essential python3-venv -y
npx dalai serve
