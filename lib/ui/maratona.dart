import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MaratonaCultural extends StatefulWidget{

  @override
  MaratonaCulturalState createState() => MaratonaCulturalState();
    
}
    Widget pegaDrawer (BuildContext context){
      return new Drawer(
           child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Home", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.home, color: Color(0xff46B7A0)),
                 onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToHome()),
                    );
                },
              ),
              ListTile(
                title: Text("Mapa do Evento", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.location_on, color: Color(0xff46B7A0)),
                 onTap: () {       
                    launchMap();
                },
              ),
              ListTile(
                title: Text("Dia 16", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.today, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToDia16()),
                    );
                },
              ),
              ListTile(
                title: Text("Dia 17", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.today, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToDia17()),
                    );
                },
              ),
              ListTile(
                title: Text("Dia 18", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.today, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToDia18()),
                    );
                },
              ),
             ListTile(
                title: Text("Orquestra de Baterias", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.library_music, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToOrquestra()),
                    );
                },
              ),
              ListTile(
                title: Text("Maratoninha", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.local_library, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToMaratoninha()),
                    );
                },
              ),
              ListTile(
                title: Text("Circuito de Bares", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.local_drink, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToBares()),
                    );
                },
              ),
              ListTile(
                title: Text("Parceiros", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.next_week, color: Color(0xff46B7A0)),
                onTap: () {       
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToParceiros()),
                    );
                }, 
              ),
              ListTile(
                title: Text("Instagram", style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xff46B7A0), fontSize: 18.0),),
                trailing: Icon(Icons.camera_alt, color: Color(0xff46B7A0)),
                onTap: () {       
                    launchInstagram();
                }, 
              )
            ],
          ),
        );
    }

  launchMap() async{
    String mapSchema = 'https://www.google.com/maps/d/viewer?mid=1Cmw-RsqnMDy_4qHlcPvfrPDSXAzPMoaV';  
    if (await canLaunch(mapSchema)) {
      await launch(mapSchema);
    } else {
      throw 'Could not launch $mapSchema';
    }
  }

  launchInstagram() async{
    String mapSchema = 'https://www.instagram.com/maratonacultural';  
    if (await canLaunch(mapSchema)) {
      await launch(mapSchema);
    } else {
      throw 'Could not launch $mapSchema';
    }
  }

  class MaratonaCulturalState extends State<MaratonaCultural>{
  @override
  Widget build(BuildContext context) {
    return GoToHome();
  } 
}

class GoToHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButton: _getFAB(context),
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
      body: Stack(
          children: <Widget>[
            Center(
              child: Image.asset("assets/capa_limpa.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )
            )
          ],
      )
    );
  }
}

class GoToDia16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/sexta.png',  
              width: double.infinity,
              fit: BoxFit.cover)
          ],
        )
      ),
    );
  }
}

class GoToDia17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/sabado.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/sabado_2.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/sabado_3.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/sabado_4.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/sabado_5.png',  
            width: double.infinity,
            fit: BoxFit.cover),              
          ],
        )
      ),
    );
  }
}

class GoToDia18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/domingo.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/domingo_2.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/domingo_3.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            Image.asset('assets/domingo_4.png',  
              width: double.infinity,
              fit: BoxFit.cover),
            
          ],
        )
      ),
    );
  }
}

class GoToParceiros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/parceiros.png',  
              width: double.infinity,
              fit: BoxFit.cover),
          ],
        )
      ),
    );
  }
}


class GoToOrquestra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/orquestra.png',  
              width: double.infinity,
              fit: BoxFit.cover),
          ],
        )
      ),
    );
  }
}

class GoToMaratoninha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/maratoninha.png',  
              width: double.infinity,
              fit: BoxFit.cover),
          ],
        )
      ),
    );
  }
}

class GoToBares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Builder(builder: (context) {
					return new FloatingActionButton(
						onPressed: () {
							Scaffold.of(context).openDrawer();
						},
						child: new Icon(Icons.menu),
            backgroundColor: Colors.deepOrangeAccent,
					);
				}),
      drawer: pegaDrawer(context),
        body: new Center(
        child: new ListView(
          children: [
            Image.asset('assets/circuito_bares.png',  
              width: double.infinity,
              fit: BoxFit.cover),
          ],
        )
      ),
    );
  }
}