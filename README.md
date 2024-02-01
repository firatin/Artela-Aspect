# Artela-Run-Aspect

#WHITE-PAPER
https://github.com/artela-network/aspect-whitepaper/blob/main/latex/build/whitepaper.pdf  

#Documantation
https://artela.network/build/developer-portal


#JSON-RPC
https://betanet-rpc1.artela.network
https://betanet-rpc2.artela.network

Network Name : Artela TestNet
New RPC URL : https://betanet-rpc1.artela.network
ChainID (optional): 11822
Symbol (optional) : ART
Block Explorer URL (optional): https://betanet-scan.artela.network/

#Snapshot
sudo systemctl stop artelad
cp $HOME/.artelad/data/priv_validator_state.json $HOME/.artelad/priv_validator_state.json.backup
rm -rf $HOME/.artelad/data $HOME/.artelad/wasmPath
curl https://testnet-files.itrocket.net/artela/snap_artela.tar.lz4 | lz4 -dc - | tar -xf - -C $HOME/.artelad
mv $HOME/.artelad/priv_validator_state.json.backup $HOME/.artelad/data/priv_validator_state.json
sudo systemctl restart artelad && sudo journalctl -u artelad -f

#Wallet
artelad q bank balances $(artelad keys show wallet -a)

![image](https://github.com/firatin/Artela-Run-Aspect/assets/78510396/9f9fe4ae-3a5a-43b4-b683-3b63556133eb)

Addresses
Account Address
art1jjk3wy8wh3x99l3p4aaed9wc9z2njpg77xqrtz
Operator Address
artvaloper1jjk3wy8wh3x99l3p4aaed9wc9z2njpg7s2g9ga
Hex Address
EB30133F46D645F0295FAEE37770FA0B1F1CB132
Signer Address
artvalcons1avcpx06x6ezlq22l4m3hwu86pv03evfjynwcfz
Consensus Public Key
{ "@type": "/cosmos.crypto.ed25519.PubKey", "key": "P3MIAFi7rmQgUZ/xk5cnOPCO8LrpU2G657q5NtH5u94=" }
