import 'package:app_clean_example/config/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weinds/weinds.dart';

import '../../domain/models/user/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).getUser();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: WeinDSSizes.sizeXXS,
          backgroundColor: WeinDsColors.strongPrimary),
      body: FutureBuilder<User>(
        future: user,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return UserDataWidget(user: snapshot.data as User);
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Center(
              child: Text('Error Al capturar data del usuario 🐛', style: TextStyle(
                fontFamily: 'Cocogoose',
                color: WeinDsColors.strongPrimary,
                fontSize: WeinDsFoundation.fontSizeH5,
                fontWeight: FontWeight.bold,
              ),),
            );
          }
        },
      ),
    );
  }
}

class UserDataWidget extends StatelessWidget {
  final User user;
  const UserDataWidget({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: WeinDsColors.strongPrimary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('¡Welcome ${user.title}.  ${user.name}!',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontFamily: 'Cocogoose',
                            color: WeinDsColors.light,
                            fontSize: WeinDsFoundation.fontSizeH4,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: ClipOval(
                        child: Image(
                          image: NetworkImage(user.profilePicture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 31,
                ),
                const Text('mail:',
                    style: TextStyle(
                      fontFamily: 'Cocogoose',
                      color: WeinDsColors.light,
                      fontSize: WeinDsFoundation.fontSizeH6,
                      fontWeight: FontWeight.bold,
                    )),
                Text(user.email,
                    style: const TextStyle(
                      fontFamily: 'Cocogoose',
                      color: WeinDsColors.light,
                      fontSize: WeinDsFoundation.fontSizeH5,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          const Icon(Icons.public, color: WeinDsColors.scale05),
                          Text(user.country,
                              style: const TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.scale05,
                                fontSize: WeinDsFoundation.fontSizeH6,
                                fontWeight: FontWeight.bold,
                              )),
                        ]),
                        Column(children: [
                          const Icon(Icons.phone, color: WeinDsColors.scale05),
                          Text(user.phone,
                              style: const TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.scale05,
                                fontSize: WeinDsFoundation.fontSizeH6,
                                fontWeight: FontWeight.bold,
                              )),
                        ]),
                        Column(children: [
                          const Icon(Icons.phone_iphone,
                              color: WeinDsColors.scale05),
                          Text(user.cell,
                              style: const TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.scale05,
                                fontSize: WeinDsFoundation.fontSizeH6,
                                fontWeight: FontWeight.bold,
                              )),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: WeinDsColors.light,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: ListView(
                children: const [
                  Text('Arquitectura Limpia 🔥',
                      style: TextStyle(
                        fontFamily: 'Cocogoose',
                        fontWeight: FontWeight.bold,
                        color: WeinDsColors.strongPrimary,
                        fontSize: WeinDsFoundation.fontSizeH4,
                      )),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
