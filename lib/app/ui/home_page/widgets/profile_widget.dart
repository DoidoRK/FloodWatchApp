import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String newUserName;
  final String newUserPhotoAsset;
  final VoidCallback onLogout;
  final VoidCallback? onInfo;
  final VoidCallback? onAddress;
  final VoidCallback? onPassword;
  final VoidCallback? onNotification;
  final VoidCallback? onNetwork;

  const ProfileWidget({
    super.key, 
    required this.newUserName,
    required this.newUserPhotoAsset,
    required this.onLogout,
    this.onInfo,
    this.onAddress,
    this.onPassword,
    this.onNotification,
    this.onNetwork
  });

  @override
  Widget build(BuildContext context) {
    // Dividindo o nome em primeiro e último nome
    List<String> nameParts = newUserName.split(' ');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton.icon(
              onPressed: onLogout,
              icon: const Icon(Icons.logout, color: Colors.red),
              label: const Text(
                'Sair',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage(newUserPhotoAsset),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nameParts[0], // Primeiro nome
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      nameParts.length > 1 ? nameParts[nameParts.length-1] : '', // Último nome
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 32),
              ],
            ),
            const SizedBox(height: 64),
            Expanded(
              child: ListView(
                children: [
                  ListTile( 
                    leading: const Icon(Icons.person, size: 32,),
                    title: const Text('Informações pessoais'),
                    trailing: const Icon(Icons.chevron_right, size: 32,),
                    onTap: onInfo
                  ),
                  ListTile(
                    leading: const Icon(Icons.home, size: 32,),
                    title: const Text('Endereço'),
                    trailing: const Icon(Icons.chevron_right, size: 32,),
                    onTap: onAddress
                  ),
                  ListTile(
                    leading: const Icon(Icons.lock, size: 32,),
                    title: const Text('Alteração de senha'),
                    trailing: const Icon(Icons.chevron_right, size: 32,),
                    onTap: onPassword
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications, size: 32,),
                    title: const Text('Notificação'),
                    trailing: const Icon(Icons.chevron_right, size: 32,),
                    onTap: onNotification
                  ),
                  ListTile(
                    leading: const Icon(Icons.language, size: 32,),
                    title: const Text('Preferências de rede'),
                    trailing: const Icon(Icons.chevron_right, size: 32,),
                    onTap: onNetwork
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}