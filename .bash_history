sudo systemctl restart artelad && sudo journalctl -u artelad -f
artelad tx staking create-validator --amount 950000uart --from refleksArtelaWallet --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity="" --website="github.com/firatin" --details="Refleks - Rues Community" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.4 --gas-prices 0.055uart --node http://localhost:45657 -y
artelad keys add refleksArtelaWallet
artelad tx staking create-validator --amount 950000uart --from refleksArtelaWallet --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity="" --website="github.com/firatin" --details="Refleks - Rues Community" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.4 --gas-prices 0.055uart --node http://localhost:45657 -y
sudo journalctl -fu artelad -o cat
sudo journalctl -fu artelad -o cat
curl -s http://47.254.24.106:26657/block | jq -r '.result.block.header.height + "\n" + .result.block_id.hash'.
curl -s http://47.254.24.106:26657/block | jq -r '.result.block.header.height + "\n" + .result.block_id.hash'
sudo journalctl -fu artelad -o cat
curl -s http://47.254.24.106:26657/block | jq -r '.result.block.header.height + "\n" + .result.block_id.hash'
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
sudo journalctl -fu artelad -o cat
sudo apt update && sudo apt install lz4 -y
sudo service artelad stop
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
curl -L https://snapshots2.stakerhouse.com/artela/artela_2235044.tar.lz4 | tar -Ilz4 -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo service artelad start && sudo journalctl -u artelad -f --output cat
systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
 $
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
SYNC_RPC="https://artela-testnet-rpc.stakerhouse.com:443"
SYNC_PEER="96c1ffb2b9ad7904d23119805b169c1a1a88647e@artela.rpc.stakerhouse.com:12756"
LATEST_HEIGHT=$(curl -s $SYNC_RPC/block | jq -r .result.block.header.height); BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000)); TRUST_HASH=$(curl -s "$SYNC_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash)
sed -i   -e "s|^enable *=.*|enable = true|"   -e "s|^rpc_servers *=.*|rpc_servers = \"$SYNC_RPC,$SYNC_RPC\"|"   -e "s|^trust_height *=.*|trust_height = $BLOCK_HEIGHT|"   -e "s|^trust_hash *=.*|trust_hash = \"$TRUST_HASH\"|"   -e "s|^persistent_peers *=.*|persistent_peers = \"$SYNC_PEER\"|"   $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f --output cat
sudo systemctl restart artelad && sudo journalctl -u artelad -f --output cat
df949a46ae6529ae1e09b034b49716468d5cc7e9@testnet-seeds.stakerhouse.com:12756
curl -Ls https://snapshots2.stakerhouse.com/addrbook/artela/addrbook.json > $HOME/.artelad/config/addrbook.json
curl -Ls https://snapshots2.stakerhouse.com/genesis/artela/genesis.json > $HOME/.artelad/config/genesis.json 
sudo service artelad stop
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
curl -L https://snapshots2.stakerhouse.com/artela/artela_2235044.tar.lz4 | tar -Ilz4 -xf - -C $HOME/.artelad
[200~mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json~
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo service artelad start && sudo journalctl -u artelad -f --output cat
systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad --keep-addr-book
SYNC_RPC="https://artela-testnet-rpc.stakerhouse.com:443"
SYNC_PEER="96c1ffb2b9ad7904d23119805b169c1a1a88647e@artela.rpc.stakerhouse.com:12756"
LATEST_HEIGHT=$(curl -s $SYNC_RPC/block | jq -r .result.block.header.height); BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000)); TRUST_HASH=$(curl -s "$SYNC_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash)
sed -i   -e "s|^enable *=.*|enable = true|"   -e "s|^rpc_servers *=.*|rpc_servers = \"$SYNC_RPC,$SYNC_RPC\"|"   -e "s|^trust_height *=.*|trust_height = $BLOCK_HEIGHT|"   -e "s|^trust_hash *=.*|trust_hash = \"$TRUST_HASH\"|"   -e "s|^persistent_peers *=.*|persistent_peers = \"$SYNC_PEER\"|"   $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f --output cat
curl -Ls https://snapshots2.stakerhouse.com/genesis/artela/genesis.json > $HOME/.artelad/config/genesis.json 
sudo journalctl -fu artelad -o cat
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.art
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
sudo journalctl -u artelad -f
artelad status 2>&1 | jq .SyncInfo
artelad status 2>&1 | jq .SyncInfo
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
artelad keys list
artelad keys add $WALLET
artelad q bank balances $(artelad keys show $WALLET -a)
artelad q bank balances $(artelad keys show $WALLET -a)
artelad keys import $WALLET wallet.backup
artelad keys import $WALLET wallet.backup
artelad keys import $WALLET wallet.backup
echo $(artelad tendermint show-node-id)'@'$(wget -qO- eth0.me)':'$(cat $HOME/.artelad/config/config.toml | sed -n '/Address to listen for incoming connection/{n;p;}' | sed 's/.*://; s/".*//')
artelad status 2>&1 | jq .SyncInfo
artelad status 2>&1 | jq .NodeInfo
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
$wallet
$Wallet
artelad query bank balances $WALLET_ADDRESS
artelad query bank balances $WALLET_ADDRESS 0x94AD1710EEbc4c52Fe21af7b9695D8289539051e
artelad keys add $WALLET
artelad keys add $WALLET
artelad keys list
artelad keys delete $WALLET
artelad keys list
artelad keys list
hi, I want recover my old wallet. How I can edit this? "artelad keys import $WALLET wallet.backup" whats the "wallet.backup". I have my old wallet phrase but i dont know where I write 
sudo journalctl -u artelad -f
[200~PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad
peers="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"  
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$peers\"/" $HOME/.artelad/config/config.toml 
LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height);
BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000));
TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash) 
echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH && sleep 2
sed -i.bak -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1true| ;
s|^(rpc_servers[[:space:]]+=[[:space:]]+).*$|\1\"$SNAP_RPC,$SNAP_RPC\"| ;
s|^(trust_height[[:space:]]+=[[:space:]]+).*$|\1$BLOCK_HEIGHT| ;
s|^(trust_hash[[:space:]]+=[[:space:]]+).*$|\1\"$TRUST_HASH\"| ;
s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1\"\"|" $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
sudo systemctl restart artelad && sudo journalctl -u artelad -f
artela-testnet-grpc.itrocket.net:30090
5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656
8d0c626443a970034dc12df960ae1b1012ccd96a@artela-testnet-seed.itrocket.net:30656
8d0c626443a970034dc12df960ae1b1012ccd96a@artela-testnet-seed.itrocket.net:30656
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
sudo systemctl stop artelad
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
artelad tendermint unsafe-reset-all --home $HOME/.artelad
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
[200~sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad
peers="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"  
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$peers\"/" $HOME/.artelad/config/config.toml 
LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height);
BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000));
TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash) 
echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH && sleep 2
sed -i.bak -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1true| ;
s|^(rpc_servers[[:space:]]+=[[:space:]]+).*$|\1\"$SNAP_RPC,$SNAP_RPC\"| ;
s|^(trust_height[[:space:]]+=[[:space:]]+).*$|\1$BLOCK_HEIGHT| ;
s|^(trust_hash[[:space:]]+=[[:space:]]+).*$|\1\"$TRUST_HASH\"| ;
s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1\"\"|" $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f~
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad
peers="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"  
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$peers\"/" $HOME/.artelad/config/config.toml 
LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height);
BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000));
TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash) 
echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH && sleep 2
sed -i.bak -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1true| ;
s|^(rpc_servers[[:space:]]+=[[:space:]]+).*$|\1\"$SNAP_RPC,$SNAP_RPC\"| ;
s|^(trust_height[[:space:]]+=[[:space:]]+).*$|\1$BLOCK_HEIGHT| ;
s|^(trust_hash[[:space:]]+=[[:space:]]+).*$|\1\"$TRUST_HASH\"| ;
s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1\"\"|" $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
SNAP_RPC="200~artela-testnet-grpc.itrocket.net:30090~"
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad
peers="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"  
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$peers\"/" $HOME/.artelad/config/config.toml 
LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height);
BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000));
TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash) 
echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH && sleep 2
sed -i.bak -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1true| ;
s|^(rpc_servers[[:space:]]+=[[:space:]]+).*$|\1\"$SNAP_RPC,$SNAP_RPC\"| ;
s|^(trust_height[[:space:]]+=[[:space:]]+).*$|\1$BLOCK_HEIGHT| ;
s|^(trust_hash[[:space:]]+=[[:space:]]+).*$|\1\"$TRUST_HASH\"| ;
s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1\"\"|" $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
SEEDS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656"
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,cc926b13a1be8b3c82cbca5bc137c04055c29d66@54.197.218.54:26656,9142bc72d918a36754d64e90f66b382f6d98f67b@161.35.157.41:45656,615a32fbf484e711562fe93b64cc069e1e5f49ab@185.230.138.142:45656,4ff33861644ebda5fb004130de5167a5a39637a9@95.216.192.62:45656,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,a5dcbab0007379945faf3b32399ef7d7cdaa8b2c@84.247.160.45:45656,2264c863bead1e2822c52d1b553becf9d8089855@[2400:8905::f03c:94ff:fecf:710]:26656,9646a4585197da3edd5b91c73b0ffa6e2b47c36a@45.85.147.242:45656"
sed -i -e "s/^seeds *=.*/seeds = \"$SEEDS\"/; s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" $HOME/.artelad/config/config.toml
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
wget -O $HOME/.artelad/config/addrbook.json https://testnet-files.itrocket.net/artela/addrbook.json
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
artelad tendermint unsafe-reset-all --home $HOME/.artelad
peers="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,db5a5fcc41d3c7378a28e0fe7a2a63e73ec42520@84.247.130.6:26656,ebc89ce123aa33ac0b73e70a188121e499728798@64.225.66.95:31756,3a280a539aa874a98e4d2cdfa70118e8c14b6745@95.214.55.138:3656,e99ec9abbf22ea61065184530a9ecf6c0e285293@[2a01:4f9:c012:8d39::1]:26656,e6b9dcf4c6e10ecfdd54e943a063685fabb0cbcf@146.59.53.93:29656,df7390401e0e1de28362068e262a5009fa40397a@31.169.73.23:27656,2b032867fc8e37d691bc72f2fe20ca6b69b30a5c@84.247.187.231:45656"  
SNAP_RPC="https://artela-testnet-rpc.itrocket.net:443"
sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$peers\"/" $HOME/.artelad/config/config.toml 
LATEST_HEIGHT=$(curl -s $SNAP_RPC/block | jq -r .result.block.header.height);
BLOCK_HEIGHT=$((LATEST_HEIGHT - 1000));
TRUST_HASH=$(curl -s "$SNAP_RPC/block?height=$BLOCK_HEIGHT" | jq -r .result.block_id.hash) 
echo $LATEST_HEIGHT $BLOCK_HEIGHT $TRUST_HASH && sleep 2
sed -i.bak -E "s|^(enable[[:space:]]+=[[:space:]]+).*$|\1true| ;
s|^(rpc_servers[[:space:]]+=[[:space:]]+).*$|\1\"$SNAP_RPC,$SNAP_RPC\"| ;
s|^(trust_height[[:space:]]+=[[:space:]]+).*$|\1$BLOCK_HEIGHT| ;
s|^(trust_hash[[:space:]]+=[[:space:]]+).*$|\1\"$TRUST_HASH\"| ;
s|^(seeds[[:space:]]+=[[:space:]]+).*$|\1\"\"|" $HOME/.artelad/config/config.toml
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
echo "export WALLET="wallet"" >> $HOME/.bash_profile
echo "export MONIKER="test"" >> $HOME/.bash_profile
echo "export ARTELA_CHAIN_ID="artela_11822-1"" >> $HOME/.bash_profile
echo "export ARTELA_PORT="45"" >> $HOME/.bash_profile
source $HOME/.bash_profile
cd $HOME
rm -rf artela
git clone https://github.com/artela-network/artela
cd artela
git checkout v0.4.7-rc6
make install
wget -qO $HOME/.artelad/config/genesis.json https://raw.githubusercontent.com/Core-Node-Team/scripts/main/artela/genesis.json
wget -qO $HOME/.artelad/config/addrbook.json https://raw.githubusercontent.com/Core-Node-Team/scripts/main/artela/addrbook.json
sed -E 's/^pool-size[[:space:]]*=[[:space:]]*[0-9]+$/apply-pool-size = 10\nquery-pool-size = 30/' ~/.artelad/config/app.toml > ~/.artelad/config/temp.app.toml && mv ~/.artelad/config/temp.app.toml ~/.artelad/config/app.toml
sed -i 's|^pruning *=.*|pruning = "custom"|g' $HOME/.artelad/config/app.toml
sed -i 's|^pruning-keep-recent  *=.*|pruning-keep-recent = "100"|g' $HOME/.artelad/config/app.toml
sed -i 's|^pruning-interval *=.*|pruning-interval = "10"|g' $HOME/.artelad/config/app.toml
sed -i 's|^snapshot-interval *=.*|snapshot-interval = 0|g' $HOME/.artelad/config/app.toml
sed -i 's|^minimum-gas-prices *=.*|minimum-gas-prices = "0.025art"|g' $HOME/.artelad/config/app.toml
sed -i 's|^prometheus *=.*|prometheus = true|' $HOME/.artelad/config/config.toml
sed -i 's|^indexer *=.*|indexer = "null"|' $HOME/.artelad/config/config.toml
# set custom ports in app.toml
sed -i.bak -e "s%:1317%:${ARTELA_PORT}317%g;
s%:8080%:${ARTELA_PORT}080%g;
s%:9090%:${ARTELA_PORT}090%g;
s%:9091%:${ARTELA_PORT}091%g;
s%:8545%:${ARTELA_PORT}545%g;
s%:8546%:${ARTELA_PORT}546%g;
s%:6065%:${ARTELA_PORT}065%g" $HOME/.artelad/config/app.toml
# set custom ports in config.toml file
sed -i.bak -e "s%:26658%:${ARTELA_PORT}658%g;
s%:26657%:${ARTELA_PORT}657%g;
s%:6060%:${ARTELA_PORT}060%g;
s%:26656%:${ARTELA_PORT}656%g;
s%^external_address = \"\"%external_address = \"$(wget -qO- eth0.me):${ARTELA_PORT}656\"%;
s%:26660%:${ARTELA_PORT}660%g" $HOME/.artelad/config/config.toml
sudo tee /etc/systemd/system/artelad.service > /dev/null << EOF
[Unit]
Description=artela node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which artelad) start
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl daemon-reload
sudo systemctl enable artelad
sudo systemctl start artelad
sudo journalctl -fu artelad -o cat
source <(curl -s https://itrocket.net/api/testnet/artela/autoinstall/)
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo journalctl -fu artelad -o cat
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
sudo systemctl disable artelad
sudo rm -rf /etc/systemd/system/artelad.service
sudo rm $(which artelad)
sudo rm -rf $HOME/.artelad
sed -i "/ARTELA_/d" $HOME/.bash_profile
sudo journalctl -fu artelad -o cat
PEERS="5c9b1bc492aad27a0197a6d3ea3ec9296504e6fd@artela-testnet-peer.itrocket.net:30656,67bfbbefe65a7ef4e0514f658b3e42a4e44760e3@84.247.176.27:45656,6670d270e2d9772717252a48eaa19be431faf28b@159.223.200.71:26356,a27fec04636e9c67444e3d2dc57bfd389cfe69ca@5.78.113.161:45656,31582a1e8ee7276e9a669dcfb609e2d4f47b029b@193.164.4.110:45656,19bf36658a877b1973c4b29524eff8d418f77697@173.212.226.128:45656,fee5a263bc1bfaf5a3585eeb7cbb45a65535256c@65.109.70.45:45656,37b0d5483aa3eaeb644c5325af41df806780ae67@31.220.82.198:26656,ef1a649369bd52f53642c98e68624f6cd9721782@84.247.130.111:45656,e60ccf5954cf2f324bbe0da7eada0a98437eab29@[2a03:4000:4c:e90:781d:c8ff:fe57:726a]:9656,a996136dcb9f63c7ddef626c70ef488cc9e263b8@144.217.68.182:22256"
sed -i 's|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.artelad/config/config.toml
sudo journalctl -u artelad -f
sudo systemctl stop artelad
sudo systemctl disable artelad
sudo rm -rf /etc/systemd/system/artelad.service
sudo rm $(which artelad)
sudo rm -rf $HOME/.artelad

sudo ufw default allow outgoing 
sudo ufw default deny incoming 
sudo ufw allow ssh/tcp 
sudo ufw allow ${ARTELA_PORT}656/tcp
sudo ufw enable
sudo systemctl stop artelad
[Bsudo systemctl disable artelad
sudo rm -rf /etc/systemd/system/artelad.service
sudo rm $(which artelad)
sudo rm -rf $HOME/.artelad
sed -i "/ARTELA_/d" $HOME/.bash_profile
source <(curl -s https://itrocket.net/api/testnet/artela/autoinstall/)
sudo journalctl -fu artelad -o cat
sudo journalctl -u artelad -f
sudo systemctl restart artelad && sudo journalctl -u artelad -f
artelad keys import $WALLET wallet.backup
artelad keys list
artelad keys import $WALLET friend marine outer planet result use glue family ecology sister meadow baby will trash festival motor hawk tongue razor round stock orbit disorder bunker
artelad keys list
artelad keys add wallet --recover
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from $WALLET --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "$MONIKER" --identity "" --details "Refleks - Rues RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad keys list
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from refleksArtelaWallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
echo $WALLET
artelad keys export $WALLET
sudo journalctl -u artelad -f
artelad keys export $WALLET
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from refleksArtelaWallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking create-validator --amount 1000000uart --from $WALLET --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "$MONIKER" --identity "" --details "Refleks - Rues RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking create-validator
artelad tx distribution withdraw-all-rewards --from $WALLET --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5
artelad query bank balances $WALLET_ADDRESS
artelad query bank balances $WALLET_ADDRESS
artelad keys add $WALLET
artelad keys list
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from $WALLET --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "$MONIKER" --identity "" --details "Refleks - Rues RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking create-validator --amount 1000000uart --from $WALLET --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "$MONIKER" --identity "" --details "Refleks - Rues RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking edit-validator --amount 950000uart --from refleksArtelaWallet --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity="" --website="github.com/firatin" --details="Refleks - Rues Community" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.4 --gas-prices 0.055uart --node http://localhost:45657 -y
artelad tx staking edit-validator
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from wallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 --node https://artela-testnet-rpc.itrocket.net:443 -y
artelad tx staking create-validator --amount 1000000uart --from wallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 --node https://artela-testnet-rpc.itrocket.net:443 -y[200~artelad tx staking create-validator --amount 1000000uart --from wallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 --node https://artela-testnet-rpc.itrocket.net:443 \
/clear
artelad tx staking create-validator --amount 1000000uart --from art1jjk3wy8wh3x99l3p4aaed9wc9z2njpg77xqrtz--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 --node https://artela-testnet-rpc.itrocket.net:443 -y
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from $wallet--commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --website="github.com/firatin" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 --node https://artela-testnet-rpc.itrocket.net:443 -y
artelad tx staking create-validator --amount 1000000uart --from $WALLET --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --details "I love blockchain ❤️" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking create-validator --amount 1000000uart --from $wallet --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad keys list
artelad tx staking create-validator --amount 1000000uart --from wallet --commission-rate 0.1 --commission-max-rate 0.2 --commission-max-change-rate 0.01 --min-self-delegation 1 --pubkey $(artelad tendermint show-validator) --moniker "refleksArtelaMoniker" --identity "" --details "Refleks - Rues/RC" --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
edit-validator --new-website="github.com/firatin"
edit-validator --new-website="www.github.com/firatin"
artelad tx staking edit-validator \ --new-website="github.com/firatin" \ -y
artelad tx staking edit-website \ --new-website="github.com/firatin" \ -y
/clear
clear
sudo journalctl -u artelad -f
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node http://localhost:45657 -y
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node http://localhost:45657 -y
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node http://localhost:45657 -y
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking edit-validator --website="github.com/firatin" --new-moniker "refleksArtelaMoniker" --identity "" --chain-id artela_11822-1 -y
artelad q bank balances $(artelad keys show $WALLET -a)
artelad q bank balances $(artelad keys show wallet -a)
artelad tx bank send $WALLET_ADDRESS wallet 1000000uart --gas auto --gas-adjustment 1.5 -
artelad keys list
artelad tx bank send $WALLET_ADDRESS 0x54491Ad856654d52Efe6b743813c2c723D8410BD 1000000uart --gas auto --gas-adjustment 1.5 -y
artelad keys list
artelad keys delete refleksArtelaWallet
artelad keys list
artelad keys export wallet
artelad keys unsafe-export-eth-key wallet
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1000000uart --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate $(artelad keys show 0xc36252768c313e80275cc66f9C4c99c5F54a1e1e
 --bech val -a) 1000000uart --from 0xc36252768c313e80275cc66f9C4c99c5F54a1e1e
 --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate artvaloper1jjk3wy8wh3x99l3p4aaed9wc9z2njpg7s2g9ga 1000000uart --from 0xc36252768c313e80275cc66f9C4c99c5F54a1e1e
 --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate artvaloper1jjk3wy8wh3x99l3p4aaed9wc9z2njpg7s2g9ga 1000000uart --from art1cd39ya5vxylgqf6ucehecnyech6558s7dds6ed
sudo journalctl -u artelad -f
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 5.4 --gas auto --gas-prices 0.025uart --node http://localhost:45657 -y
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 5.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment15.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show art1cd39ya5vxylgqf6ucehecnyech6558s7dds6ed --bech val -a) 1.5art --from art1cd39ya5vxylgqf6ucehecnyech6558s7dds6ed --chain-id artela_11822-1 --gas-adjustment 5.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad keys import $keplrWallet 
artelad q bank balances $(artelad keys show wallet -a)
artelad q bank balances $(artelad keys show wallet -a)
artelad keys list
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
sudo journalctl -u artelad -f
screen -r artelad
apt install screen
screen -r artelad
screen -ls
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
sudo journalctl -u artelad -f
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.5art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.4art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1.4art --from art1jjk3wy8wh3x99l3p4aaed9wc9z2njpg77xqrtz --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show art1jjk3wy8wh3x99l3p4aaed9wc9z2njpg77xqrtz --bech val -a) 1.4art --from art1jjk3wy8wh3x99l3p4aaed9wc9z2njpg77xqrtz --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart
artelad tx staking delegate $(artelad keys show art1yvhu8m3pl7fpspmks6ay9ngw64g0lf758vg8th --bech val -a) 1art --from art1yvhu8m3pl7fpspmks6ay9ngw64g0lf758vg8th --chain-id artela_11822-1 --gas-adjustment 5.4 --gas auto --gas-prices 0.025uart 
sudo systemctl restart artelad && sudo journalctl -u artelad -f
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 6art --from $WALLET --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 6art --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 2art --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 1art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg  --bech val -a) 1art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg  --bech val -a) 0.1art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 0.1art --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y 
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 1.0art --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
artelad tx staking delegate artvaloper1yvhu8m3pl7fpspmks6ay9ngw64g0lf75fqqpgg 1.0art --from wallet --chain-id artela_11822-1 --gas auto --gas-adjustment 1.5 -y
sudo journalctl -u artelad -f
sudo systemctl restart artelad && sudo journalctl -u artelad -f
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 3art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
sudo journalctl -u artelad -f
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --node --node localhost:26657 -y -y
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --node --node http://localhost:45657 -y
sudo journalctl -u artelad -f
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --moniker "refleksArtelaMoniker" --node --node http://localhost:45657 -y
artelad tx staking
artelad tx staking -h
artelad tx staking -h --log_level
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --node --node https://artela-testnet-rpc.itrocket.net:443 
-y
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --from="refleksArtelaMoniker" --node --node https://artela-testnet-rpc.itrocket.net:443 
-y
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --from="wallet" --node --node https://artela-testnet-rpc.itrocket.net:443 
-y
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --from="wallet" --node --node https://artela-testnet-rpc.itrocket.net:443\ 
artelad tx staking edit-validator --website="github.com/firatin" --gas 300000 --gas-adjustment 1.5 --from="wallet" --node https://artela-testnet-rpc.itrocket.net:443 -y
sudo journalctl -u artelad -f
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 3art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 2art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 0.8art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad q bank balances $(artelad keys show wallet -a)
artelad q bank balances $(artelad keys show wallet -a)
artelad q bank balances $(artelad keys show wallet -a)
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 08art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
artelad tx staking delegate $(artelad keys show wallet --bech val -a) 0.7art --from wallet --chain-id artela_11822-1 --gas-adjustment 1.4 --gas auto --gas-prices 0.025uart --node https://artela-testnet-rpc.itrocket.net:443 \
sudo journalctl -u artelad -f
