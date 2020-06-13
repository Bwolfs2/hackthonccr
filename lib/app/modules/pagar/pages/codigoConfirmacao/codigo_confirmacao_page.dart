import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'codigo_confirmacao_controller.dart';

class CodigoConfirmacaoPage extends StatefulWidget {
  final String title;
  const CodigoConfirmacaoPage({Key key, this.title = "CodigoConfirmacao"})
      : super(key: key);

  @override
  _CodigoConfirmacaoPageState createState() => _CodigoConfirmacaoPageState();
}

class _CodigoConfirmacaoPageState
    extends ModularState<CodigoConfirmacaoPage, CodigoConfirmacaoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          centerTitle: true,
          expandedHeight: 70,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 400,
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Código de\nConfirmação",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "digite o código\nenviado por SMS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                PinCodeTextField(
                  autofocus: true,
                  hideCharacter: false,
                  highlight: false,
                  highlightColor: Colors.blue,
                  defaultBorderColor: Colors.black,
                  hasTextBorderColor: Colors.green,
                  maxLength: 6,

                  onDone: (text) {
                    Modular.link.pushNamed("/comprovante");
                  },
                  wrapAlignment: WrapAlignment.spaceAround,
                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle: TextStyle(fontSize: 20),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
                  highlightPinBoxColor: Colors.white,
                  highlightAnimationBeginColor: Colors.black,
                  highlightAnimationEndColor: Colors.white12,
                  keyboardType: TextInputType.number,
                  pinBoxWidth: 45,
                  pinBoxRadius: 10,
                ),

                // PinView(
                //     count: 6,
                //     autoFocusFirstField: true,
                //     margin: EdgeInsets.all(2.5),
                //     obscureText: false,
                //     inputDecoration: InputDecoration(
                //         filled: true,
                //         fillColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(15),
                //           borderSide: BorderSide(
                //             width: 1,
                //             color: Colors.black87,
                //           ),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(15),
                //           borderSide: BorderSide(
                //             width: 1,
                //             color: Colors.black87,
                //           ),
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(15),
                //           borderSide: BorderSide(
                //             width: 1,
                //             color: Colors.black87,
                //           ),
                //         )),
                //     style:
                //         TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
                //     dashStyle: TextStyle(fontSize: 25.0, color: Colors.grey),
                //     submit: (String pin) {
                //       Modular.link.pushNamed("/comprovante");
                //     }),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
