import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/config/providers/cat.dart';
import 'package:riverpod_example/config/providers/shopping_list.dart';
import 'package:weinds/weinds.dart';

class CatStatePage extends ConsumerWidget {
  const CatStatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('se hizo build de la pagina de Gato');

    return Scaffold(
        backgroundColor: WeinDsColors.strongPrimary,
        appBar: AppBar(
            foregroundColor: WeinDsColors.light,
            toolbarHeight: WeinDSSizes.sizeXXS,
            backgroundColor: WeinDsColors.strongPrimary),
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration:
                  const BoxDecoration(color: WeinDsColors.strongPrimary),
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
                          const Text('Establecer estado',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.light,
                                fontSize: WeinDsFoundation.fontSizeH4,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 31,
                          ),
                          const Text('¿En que estado se encuentra el gato?',
                              style: TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.light,
                                fontSize: WeinDsFoundation.fontSizeH6,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 184,
                            width: MediaQuery.of(context).size.width * 0.9,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/bg-card.png'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const WeinDsAssetImage(
                                      path: 'assets/images/cat-eat.png',
                                      widthImage: 180),
                                  Expanded(
                                    child: MaterialButton(
                                      minWidth: 100,
                                      height: 50,
                                      onPressed: () {
                                        ref.read(myCatProvider).catEat();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Estado cambiado, el gato esta comiendo'),
                                          ),
                                        );
                                      },
                                      color: WeinDsColorsFoundation
                                          .colorButtonSecondary, // Transparent background for secondary button
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 0.5,
                                          color: WeinDsColors.strongPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const SizedBox(
                                        height: 63,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('el gato esta'),
                                              Text('comiendo'),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            height: 184,
                            width: MediaQuery.of(context).size.width * 0.9,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/bg-card.png'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const WeinDsAssetImage(
                                      path: 'assets/images/cat-jump.png',
                                      widthImage: 180),
                                  Expanded(
                                    child: MaterialButton(
                                      minWidth: 100,
                                      height: 50,
                                      onPressed: () {
                                        ref.read(myCatProvider).catJump();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Estado cambiado, el gato esta saltando'),
                                          ),
                                        );
                                      },
                                      color: WeinDsColorsFoundation
                                          .colorButtonSecondary, // Transparent background for secondary button
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 0.5,
                                          color: WeinDsColors.strongPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const SizedBox(
                                        height: 63,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('el gato esta'),
                                              Text('saltando'),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            height: 184,
                            width: MediaQuery.of(context).size.width * 0.9,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/bg-card.png'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const WeinDsAssetImage(
                                      path: 'assets/images/cat-sleep.png',
                                      widthImage: 180),
                                  Expanded(
                                    child: MaterialButton(
                                      minWidth: 100,
                                      height: 50,
                                      onPressed: () {
                                        ref.read(myCatProvider).catSleep();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Estado cambiado, el gato esta durmiendo'),
                                          ),
                                        );
                                      },
                                      color: WeinDsColorsFoundation
                                          .colorButtonSecondary, // Transparent background for secondary button
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 0.5,
                                          color: WeinDsColors.strongPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const SizedBox(
                                        height: 63,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('el gato esta'),
                                              Text('durmiendo'),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            height: 184,
                            width: MediaQuery.of(context).size.width * 0.9,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/bg-card.png'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const WeinDsAssetImage(
                                      path: 'assets/images/cat-play.png',
                                      widthImage: 180),
                                  Expanded(
                                    child: MaterialButton(
                                      minWidth: 100,
                                      height: 50,
                                      onPressed: () {
                                        ref.read(myCatProvider).catPlay();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Estado cambiado, el gato esta jugando'),
                                          ),
                                        );
                                      },
                                      color: WeinDsColorsFoundation
                                          .colorButtonSecondary, // Transparent background for secondary button
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 0.5,
                                          color: WeinDsColors.strongPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const SizedBox(
                                        height: 63,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('el gato esta'),
                                              Text('jugando'),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Container(
                            height: 184,
                            width: MediaQuery.of(context).size.width * 0.9,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/bg-card.png'),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const WeinDsAssetImage(
                                      path: 'assets/images/cat-running.png',
                                      widthImage: 180),
                                  Expanded(
                                    child: MaterialButton(
                                      minWidth: 100,
                                      height: 50,
                                      onPressed: () {
                                        ref.read(myCatProvider).catRunning();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Estado cambiado, el gato esta corriendo'),
                                          ),
                                        );
                                      },
                                      color: WeinDsColorsFoundation
                                          .colorButtonSecondary, // Transparent background for secondary button
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          width: 0.5,
                                          color: WeinDsColors.strongPrimary,
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: const SizedBox(
                                        height: 63,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('el gato esta'),
                                              Text('corriendo'),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          const Text('Lista actual de compras',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Cocogoose',
                                color: WeinDsColors.light,
                                fontSize: WeinDsFoundation.fontSizeH4,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 400,
                              decoration: const BoxDecoration(
                                  color: WeinDsColors.statusSuccess),
                              child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Consumer(
                                    builder: (context, value, child) {
                                      final List<String> shoppingListItems =
                                          ref.watch(myShoppingListProvider);
                                      return ListView.separated(
                                        itemCount: shoppingListItems.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: const BoxDecoration(
                                                color: WeinDsColors.scale01),
                                            child: ListTile(
                                              title: Text(
                                                  shoppingListItems[index]),
                                              trailing: IconButton(
                                                icon: const Icon(Icons.delete),
                                                onPressed: () {
                                                  ref
                                                      .read(
                                                          myShoppingListProvider
                                                              .notifier)
                                                      .removeItem(index);
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return const SizedBox(
                                            height: 8,
                                          );
                                        },
                                      );
                                    },
                                  )))
                        ],
                      ),
                    )
                  ])),
        ));
  }
}
