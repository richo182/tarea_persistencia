import 'package:curso2/Models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:curso2/Providers/counter_provider.dart';

class ItemMovie extends StatefulWidget {
  final MovieModel movieModel;
  const ItemMovie({Key? key, required this.movieModel}) : super(key: key);

  @override
  _ItemMovieState createState() => _ItemMovieState();
}

class _ItemMovieState extends State<ItemMovie> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
        child: Stack(
          children: [
            Image.network(
                widget.movieModel.url,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
            Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.black54,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        widget.movieModel.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),
                    Text(
                      widget.movieModel.language,
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          Provider.of<CounterProvider>(context, listen: false).addCounter();
                        },
                        child: Text(
                          "Agregar al carrito"
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
