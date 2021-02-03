import 'dart:async';
import 'package:bloc_app/ViewModel/CounterEvent.dart';


// async enable
class CounterBloc{
  int _counter = 0;
  //StreamCountroller handle input and output
  final _counterStateController = StreamController<int>();
  // Sink in Flutter can be easily stated, In Simple Words Sink = Import
  StreamSink<int> get _inCounter =>_counterStateController.sink;
  // Stream in Flutter can be easily stated, In Simple Words Stream = Output
  Stream<int> get counter =>_counterStateController.stream;
  //event controller to trigger which event has occurred
  final _counterEventController = StreamController<CounterEvent>();
  Sink<CounterEvent> get counterEventSink =>_counterEventController.sink;
  Bloc_Counter(){
    _counterEventController.stream.listen((_mapEventtoState));
  }
  void _mapEventtoState(CounterEvent event){
    // depending on event either increment or decrement the counter variable
    if(event is IncrementEvent)
      _counter++;
    else
      _counter--;
    _inCounter.add(_counter);
  }
  // Dispose the Controller, Very important step, Otherwise you may get memory leak
  void dispose(){
    _counterStateController.close();
    _counterEventController.close();
  }
}
