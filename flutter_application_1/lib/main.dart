import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 208, 200, 200),
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Today  February 2'),
          trailing: GestureDetector(
            onTap: () {
              const PageOne();
            },
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                label: 'Today',
                icon: Icon(CupertinoIcons.clock_solid),
              ),
              BottomNavigationBarItem(
                label: 'Games',
                icon: Icon(CupertinoIcons.game_controller),
              ),
              BottomNavigationBarItem(
                label: 'Apps',
                icon: Icon(CupertinoIcons.folder),
              ),
              BottomNavigationBarItem(
                label: 'Arcade',
                icon: Icon(CupertinoIcons.folder),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(CupertinoIcons.search),
              ),
            ],
          ),
          tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => pages[index],
          ),
        ),
      ),
    );
  }
}

final List<Widget> pages = [
  const PageOne(),
  const PageTwo(),
  const PageThree(),
  const PageFour(),
  const PageFive(),
];

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.grey,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0),
                        ),
                       child: Image.network(
                        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTVba1pZYdFGwmkFGT04ZD39-MVDIOQiiCna12l55NDzd6NHaRO3eM7YB47RNRs',
                        width: double.infinity,
                        height: 490.0,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Text('An error occurred while loading the image: $error');
                        },
                      ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fortnite',
                              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Crea y juega gratis con amigos en Fortnite',
                              style: TextStyle(fontSize: 16.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 90.0,
                    left: 8.0,
                    child: Text(
                      'Sé la última persona en pie en Batalla campal',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  const Positioned(
                    bottom: 120.0,
                    left: 8.0,
                    child: Text(
                      'Pruebalo ahora',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 80, 80),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const TextButton(
                            onPressed: null,
                            child: Text('Get', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const Text(
                          'Compras en la app',
                          style: TextStyle(fontSize: 8.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: const Color.fromARGB(255, 38, 38, 38),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          child: Image.network(
                            'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQy1lT4oKrLgDGJcDvUnf8NkhenVrB6j0EYE-vCwSAKpn__KTfLHzHBRT1mXi9E',
                            width: double.infinity,
                            height: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Free Fire',
                              style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Sé la última persona en pie en Batalla campal',
                              style: TextStyle(fontSize: 16.0, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 8.0,
                    right: 8.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 8.0),
                        TextButton(
                          onPressed: null,
                          child: Icon(CupertinoIcons.cloud_download, color: CupertinoColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 2'),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 3'),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pagina 4'),
    );
  }
}



class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.grey[100],
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              CupertinoSearchTextField(
                placeholder: 'Search',
                placeholderStyle: const TextStyle(color: Colors.grey),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                onSubmitted: (String value) {
                  print('Searched for: $value');
                },
              ),
              const Positioned(
                right: 8.0,
                child: Icon(
                  CupertinoIcons.mic,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          CupertinoListSection(
            header: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ],
            ),
            children: <Widget>[
              _buildDiscoverItems(['IcloudDrive', 'On My iPhone']),
              _buildDiscoverItems(['pdf converter', 'my little pony']),
              _buildDiscoverItems(['matematicas', 'juegos de terror']),
            ],
          ),
          CupertinoListSection(
            header: const Text(
              'Suggested',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            children: <Widget>[
              _buildAppStoreItems([
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPwESFSdn4z01ULiFuIds4tHescZPkuixJLPqkk9tcuBQkP07bJwMTtInOJ_yj0D6EJ0F1pZaqu3xIV8Rwiwepr5FXJKkpZJKEsKjFxRx7gdkMjc4T_E7zKr-IXsO2PjHoWArTBD8zHqnaa5gj9CWrM=w250-h200-p', 'name': 'Free Fire'},
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPy_qCADxGQ_WedCggFPIkvctHmO7FdfsXrokdo651xQfENGyeQiCrGUOuAjPUbDJBaH7mCytEYjdwy4RTVmzuC60gLi5Gfz3Eai6sGLo4K-m-ZG2M4O7NDSHtef1qg3hfNop8h3SLgooBuvFKA6ygCk-PpcVgPn8XSFoDV-SgTVsRszCpXFIL38e8_JwG8Cb-vV6xsmQ3zRiSlvVzNijAdXs0DC0lXyPbSBr5ateij5bWH5u2Wj6g=w250-h200-p', 'name': 'Fortnite'},
                {'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnaW9CAIUwOQAmh3VhnrpeQbeVIiqt1LIjSB7EuGkyPhVkCRNVtFFtDvi6TAUr', 'name': 'Shein'},
                {'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT2eNnjoCcKc3fF5vxtzmcZ6183e2xzq_Ogc4ya-Ic1TrqmKCrGaas4lm-O9Olq', 'name': 'Youtube'},
                {'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT4m2Z8edEBVqbYMAHCLBKx793VWwgBATiVcCQRxgR8SCcqZa8Mcr8A7H7HlDCL', 'name': 'Instagram'},
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPwESFSdn4z01ULiFuIds4tHescZPkuixJLPqkk9tcuBQkP07bJwMTtInOJ_yj0D6EJ0F1pZaqu3xIV8Rwiwepr5FXJKkpZJKEsKjFxRx7gdkMjc4T_E7zKr-IXsO2PjHoWArTBD8zHqnaa5gj9CWrM=w250-h200-p', 'name': 'Free Fire'},
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPy_qCADxGQ_WedCggFPIkvctHmO7FdfsXrokdo651xQfENGyeQiCrGUOuAjPUbDJBaH7mCytEYjdwy4RTVmzuC60gLi5Gfz3Eai6sGLo4K-m-ZG2M4O7NDSHtef1qg3hfNop8h3SLgooBuvFKA6ygCk-PpcVgPn8XSFoDV-SgTVsRszCpXFIL38e8_JwG8Cb-vV6xsmQ3zRiSlvVzNijAdXs0DC0lXyPbSBr5ateij5bWH5u2Wj6g=w250-h200-p', 'name': 'Fortnite'},
                {'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnaW9CAIUwOQAmh3VhnrpeQbeVIiqt1LIjSB7EuGkyPhVkCRNVtFFtDvi6TAUr', 'name': 'Shein'},
                {'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT2eNnjoCcKc3fF5vxtzmcZ6183e2xzq_Ogc4ya-Ic1TrqmKCrGaas4lm-O9Olq', 'name': 'Youtube'},
                {'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT4m2Z8edEBVqbYMAHCLBKx793VWwgBATiVcCQRxgR8SCcqZa8Mcr8A7H7HlDCL', 'name': 'Instagram'},
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPwESFSdn4z01ULiFuIds4tHescZPkuixJLPqkk9tcuBQkP07bJwMTtInOJ_yj0D6EJ0F1pZaqu3xIV8Rwiwepr5FXJKkpZJKEsKjFxRx7gdkMjc4T_E7zKr-IXsO2PjHoWArTBD8zHqnaa5gj9CWrM=w250-h200-p', 'name': 'Free Fire'},
                {'image': 'https://lh3.googleusercontent.com/bip/AAewDPy_qCADxGQ_WedCggFPIkvctHmO7FdfsXrokdo651xQfENGyeQiCrGUOuAjPUbDJBaH7mCytEYjdwy4RTVmzuC60gLi5Gfz3Eai6sGLo4K-m-ZG2M4O7NDSHtef1qg3hfNop8h3SLgooBuvFKA6ygCk-PpcVgPn8XSFoDV-SgTVsRszCpXFIL38e8_JwG8Cb-vV6xsmQ3zRiSlvVzNijAdXs0DC0lXyPbSBr5ateij5bWH5u2Wj6g=w250-h200-p', 'name': 'Fortnite'},
                {'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnaW9CAIUwOQAmh3VhnrpeQbeVIiqt1LIjSB7EuGkyPhVkCRNVtFFtDvi6TAUr', 'name': 'Shein'},
              ]),
              
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDiscoverItems(List<String> texts) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: (texts.length / 2).ceil(),
      itemBuilder: (context, index) {
        final startIndex = index * 2;
        final endIndex = (index + 1) * 2;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = startIndex; i < endIndex && i < texts.length; i++)
              _buildDiscoverItem(texts[i]),
          ],
        );
      },
    );
  }

  Widget _buildDiscoverItem(String text) {
    return Row(
      children: [
        Icon(
          CupertinoIcons.search,
          color: CupertinoColors.systemBlue,
        ),
        const SizedBox(width: 8.0),
        Text(
          text,
          style: TextStyle(color: CupertinoColors.systemBlue),
        ),
      ],
    );
  }

Widget _buildAppStoreItems(List<Map<String, dynamic>> apps) {
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: apps.length,
    itemBuilder: (context, index) {
      final app = apps[index];

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0), 
        child: CupertinoListTile(
          leading: Image.network(
            app['image'] as String,
            width: 60.0,
            height: 60.0,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                app['name'] as String,
                style: TextStyle(color: CupertinoColors.systemBlue),
              ),
              Text(
                'Esto es una descripción para ${app['name']}',
                style: TextStyle(color: CupertinoColors.systemGrey),
              ),
            ],
          ),
          onTap: () {
            print('Tapped on ${app['name']}');
          },
        ),
      );
    },
  );
}
}