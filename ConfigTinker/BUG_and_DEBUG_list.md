
1/ for Nomachine keyboard bug :

- Une fois connecté via NoMachine pour avoir le clavier en francais vous pouvez taper lancer le script reconfig_keyboard
- If in NoMachine, your keyboard is not in english need run reconfig_keyboard script

2/ No desktop bug ( or partial desktop bug):

- Si vous démarrez et qu'il n'y plus d'icone sur le bureau et que le clique droit ne marche plus, essayer F5 ou redémarer
- If you start and there is no icon on the desktop and the right click no longer works, try F5 or restart

3/ Hotspot option does not appear in armbian-config :

- Déconnectez vous du reseaux wifi sur lequel vous êtes connecté à l'aide de armbian-config ou du bureau puis redémarer armbian-config
- (bis) lancer la commande suivante, qui supprime toute les connection wifi : `sudo rm /etc/NetworkManager/system-connections/*`

- Disconnect from the wifi networks on which you are connected using armbian-config or the desktop then restart armbian-config
- (bis) launch the following command, which removes all wifi connections: `sudo rm /etc/NetworkManager/system-connections/*`
