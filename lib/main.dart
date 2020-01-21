import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MainPage extends StatefulWidget {
	final String title;
	MainPage({ this.title }) : super();
	@override 
	State<StatefulWidget> createState() {
		return new MainPageState();
	}
}

class MainPageState extends State<MainPage> {
	@override 
	Widget build(BuildContext buildContext) {
		return new Scaffold(
			appBar: new AppBar(
				title: new Text(widget.title),
			),
			body: new GridView.extent(
				maxCrossAxisExtent: 150.0,
				mainAxisSpacing: 5.0,
				crossAxisSpacing: 5.0,
				children: _buildGridTiles(29),
			)
		);
	}

	List<Stack> _buildGridTiles(numberOfTiles) {
		List<Stack> stacks = new List<Stack>.generate(numberOfTiles, (int index) {
			return new Stack(
				alignment: const Alignment(0.0, 0.0),
				children: <Widget>[
					new Container(
						child: new Image.asset(
							"images/1.jpg",
							width: 150.0,
							height: 150.0,
							fit: BoxFit.cover,
						),
					),
					new Container(
						padding: const EdgeInsets.all(10.0),
						decoration: new BoxDecoration(
							color: Color.fromARGB(255, 71, 150, 236)
						),
						child: new Text(
							"Hello",
							style: new TextStyle(
								fontSize: 20.0,
								fontWeight: FontWeight.bold,
								color: Colors.white
							),
						),
					)
				]
			);
		});
		return stacks;
	}
}

class MyApp extends StatelessWidget {
	@override 
	Widget build(BuildContext buildContext) {
		return new MaterialApp(
			title: "My App",
			home: new MainPage(title: "GridView",)
		);
	}
}