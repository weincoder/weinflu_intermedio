import 'package:app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weinds/weinds.dart';

final Uri _urlYouTubeChannel = Uri.parse('https://youtube.com/c/weincode');
final Uri _urlWeinDs =
    Uri.parse('https://zeroheight.com/1dfd58e88/p/82f7b2-weinds');
final Uri _urlWeinDsFund =
    Uri.parse('https://zeroheight.com/1dfd58e88/p/0849c4-colors/b/90ae17');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: WeinDSSizes.sizeXS,
          backgroundColor: WeinDsColors.strongPrimary),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: WeinDsColors.strongPrimary),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('WeinDS',
                      style: TextStyle(
                        fontFamily: 'Cocogoose',
                        color: WeinDsColors.light,
                        fontSize: WeinDsFoundation.fontSizeH4,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 31,
                  ),
                  const Text('Categorías',
                      style: TextStyle(
                        fontFamily: 'Cocogoose',
                        color: WeinDsColors.light,
                        fontSize: WeinDsFoundation.fontSizeH6,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 184,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        WeinDsStyledCard(
                            title: 'Atoms',
                            buttonText: 'Conocer más',
                            onPressed: () {Navigator.of(context).pushNamed(AppRoutes.atoms);},
                            illustrationType: WeinDsIllustrationType.atom),
                        const SizedBox(width: 10),
                        WeinDsStyledCard(
                            title: 'Molecules',
                            buttonText: 'Conocer más',
                            onPressed: () {},
                            illustrationType: WeinDsIllustrationType.molecules),
                        const SizedBox(width: 10),
                        WeinDsStyledCard(
                            title: 'Organisms',
                            buttonText: 'Conocer más',
                            onPressed: () {},
                            illustrationType: WeinDsIllustrationType.organisms),
                        const SizedBox(width: 10),
                        WeinDsStyledCard(
                            title: 'Templates',
                            buttonText: 'Conocer más',
                            onPressed: () {},
                            illustrationType: WeinDsIllustrationType.templates),
                        const SizedBox(width: 10),
                        WeinDsStyledCard(
                            title: 'Action',
                            buttonText: 'Conocer más',
                            onPressed: () {},
                            illustrationType: WeinDsIllustrationType.action),
                      ],
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
                  children: [
                    const Text('Recomendado',
                        style: TextStyle(
                          fontFamily: 'Cocogoose',
                          fontWeight: FontWeight.bold,
                          color: WeinDsColors.strongPrimary,
                          fontSize: WeinDsFoundation.fontSizeH4,
                        )),
                    const SizedBox(height: 28),
                    WeinDsActionCard(
                        title: 'Canal de YouTube',
                        buttonText: 'Aprende más!',
                        description:
                            'Visita nuestro canal de YouTube para más contenido.',
                        illustrationType: WeinDsIllustrationType.programando,
                        cardType: WeinDsActionCardType.primary,
                        onPressed: () => launchUrl(_urlYouTubeChannel)),
                    const SizedBox(height: 12),
                    WeinDsActionCard(
                        title: 'Fundamentos',
                        buttonText: 'Aprende más!',
                        description:
                            'Conoce más sobre nuestro sistema de diseño.',
                        illustrationType: WeinDsIllustrationType.designWhite,
                        cardType: WeinDsActionCardType.secondary,
                        onPressed: () => launchUrl(_urlWeinDsFund)),
                    const SizedBox(height: 12),
                    WeinDsActionCard(
                        title: 'Documentación',
                        buttonText: 'Aprende más!',
                        description:
                            'Conoce la documentación de nuestro sistema de diseño.',
                        illustrationType: WeinDsIllustrationType.asesoria,
                        cardType: WeinDsActionCardType.tertiary,
                        onPressed: () => launchUrl(_urlWeinDs))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
