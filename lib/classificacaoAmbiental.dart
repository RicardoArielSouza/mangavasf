import 'package:flutter/material.dart';

class ClassificacaoAmbientalPage extends StatefulWidget {
  const ClassificacaoAmbientalPage({Key? key}) : super(key: key);

  @override
  State<ClassificacaoAmbientalPage> createState() =>
      _ClassificacaoAmbientalPageState();
}

class _ClassificacaoAmbientalPageState
    extends State<ClassificacaoAmbientalPage> {
  final List<String> items = [
    'Selecione',
    '*- Em adequação a lei nº 7.802/89',
    'I - Altamente perigoso ao meio ambiente',
    'II - Muito perigoso ao meio ambiente',
    'III - Perigoso ao meio ambiente',
    'IV - Pouco perigoso ao meio ambiente',
    'V - Baixo risco ao meio ambiente',
  ];
  String? selectedValue;

  final List<String> items2 = [
    'Selecione',
    'Acaricidas',
    'Bactericidas',
    'Fungicidas',
    'Herbicidas',
    'Inseticidas',
    'Nematicidas',
  ];
  String? selectedValue2;

  final List<Map<String, dynamic>> _allProducts = [
    {
      "image":
          "https://media.istockphoto.com/photos/solid-yellow-background-picture-id1222503799?k=20&m=1222503799&s=612x612&w=0&h=f-b9Ev9_iaHMmJ7pBqLiOrvk6rRE0as8vIPMsnnjwpc=",
      "id": 1,
      "name": "Exemplo",
      //Descrição - des
      "des": "",
    },
    {
      "id": 2,
      "name": "Exemplo",
      "des": " ",
      "image":
          "https://media.istockphoto.com/photos/solid-yellow-background-picture-id1222503799?k=20&m=1222503799&s=612x612&w=0&h=f-b9Ev9_iaHMmJ7pBqLiOrvk6rRE0as8vIPMsnnjwpc=",
    },
    {
      "id": 3,
      "name": "Exemplo",
      "des": "",
      "image":
          "https://media.istockphoto.com/photos/solid-yellow-background-picture-id1222503799?k=20&m=1222503799&s=612x612&w=0&h=f-b9Ev9_iaHMmJ7pBqLiOrvk6rRE0as8vIPMsnnjwpc=",
    },
    {
      "id": 4,
      "name": "Exemplo",
      "des": "",
      "image":
          "https://media.istockphoto.com/photos/solid-yellow-background-picture-id1222503799?k=20&m=1222503799&s=612x612&w=0&h=f-b9Ev9_iaHMmJ7pBqLiOrvk6rRE0as8vIPMsnnjwpc=",
    },
    {
      "id": 5,
      "name": "Exemplo",
      "des": " ",
      "image":
          "https://www.publicdomainpictures.net/pictures/200000/nahled/plain-blue-background.jpg",
    },
    {
      "id": 6,
      "name": "Exemplo",
      "des": " ",
      "image":
          "https://www.lumitecfoto.com.br/media/catalog/product/cache/1/image/650x/9df78eab33525d08d6e5fb8d27136e95/t/e/tela-verde-270-x-600m-fundo-importadogramatura-250chroma-key-1.jpg",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundProducts = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundProducts = _allProducts;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allProducts;
    } else {
      results = _allProducts
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), //Tamanho da header
        child: AppBar(
          //Icon menu
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 35,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'MANGOVASF',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          letterSpacing: 5,
                        ),
                      ),
                      Text(
                        'Defensivos Agrícolas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/mangovasficon.png',
                  fit: BoxFit.contain,
                  height: 82,
                ),
              ],
            ),
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
          ),

          elevation: 5, //Sombreamento da Header
          backgroundColor:
              Color.fromARGB(255, 203, 236, 184), //Background color da header
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/classificacao_ambiental.png',
                        width: 180.0,
                      ),
                    ),
                    Container(
                      width: 280,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Produtos Formulados por Classificação Ambiental',
                              style: TextStyle(fontSize: 22.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                //Texto da searchbox
                hintText: "Pesquisar",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10.0, top: 10.0),

              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: <Widget>[
                //Ajustar texto quebrar
                Text(
                  'Classificação Ambiental: ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: InputDecorator(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(left: 10.0)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: 'Selecione',
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      DropdownMenuItem(
                        child: Text('Selecione'),
                        value: 'Selecione',
                      ),
                      DropdownMenuItem(
                        child: Text('*- Em adequação a lei nº 7.802/89'),
                        value: '*- Em adequação a lei nº 7.802/89',
                      ),
                      DropdownMenuItem(
                        child: Text('I - Altamente perigoso ao meio ambiente'),
                        value: 'I - Altamente perigoso ao meio ambiente',
                      ),
                      DropdownMenuItem(
                        child: Text('II - Muito perigoso ao meio ambiente'),
                        value: 'II - Muito perigoso ao meio ambiente',
                      ),
                      DropdownMenuItem(
                        child: Text('III - Perigoso ao meio ambiente'),
                        value: 'III - Perigoso ao meio ambiente',
                      ),
                      DropdownMenuItem(
                        child: Text('IV - Pouco perigoso ao meio ambiente'),
                        value: 'IV - Pouco perigoso ao meio ambiente',
                      ),
                      DropdownMenuItem(
                        child: Text('V - Baixo risco ao meio ambiente'),
                        value: 'V - Baixo risco ao meio ambiente',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: Column(children: <Widget>[
                //Ajustar texto quebrar
                Text(
                  'Classe Agronômica: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: InputDecorator(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(left: 10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(20.0),

                    value: 'Fungicidas',
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      DropdownMenuItem(
                        child: Text('Selecione'),
                        value: 'Selecione',
                      ),
                      DropdownMenuItem(
                        child: Text('Acaricidas'),
                        value: '1 - Acaricidas',
                      ),
                      DropdownMenuItem(
                        child: Text('Bactericidas'),
                        value: 'Bactericidas',
                      ),
                      DropdownMenuItem(
                        child: Text('Fungicidas'),
                        value: 'Fungicidas',
                      ),
                      DropdownMenuItem(
                        child: Text('Herbicidas'),
                        value: 'Herbicidas',
                      ),
                      DropdownMenuItem(
                        child: Text('Inseticidas'),
                        value: 'Inseticidas',
                      ),
                      DropdownMenuItem(
                        child: Text('Nematicidas'),
                        value: 'Nematicidas',
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 203, 236, 184),
              height: 50.0,
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Row(children: [
                Text(
                  'FUNGICIDAS',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Container(
              color: Color.fromARGB(255, 203, 236, 184),
              height: 50.0,
              margin: EdgeInsets.only(top: 1.0),
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Row(children: [
                Text(
                  'A',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Expanded(
              child: _foundProducts.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundProducts.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 15.0,
                            backgroundImage:
                                NetworkImage(_foundProducts[index]['image']),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(_foundProducts[index]['name']),
                          subtitle: Text('${_foundProducts[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
