import 'package:flutter/material.dart';
import 'package:payflow/modules/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      primaryLabel: 'Escanear novamente',
      primaryOnPressed: (){},
      secondaryLabel: 'Digitar código',
      secondaryOnPressed: (){},
      title: 'Não foi possível identificar um código de barras.',
      subtitle: 'Tente escanear novamente ou digite o código do seu boleto.'
    );

    /*return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: BackButton(color: AppColors.background),
            title: Text('Escaneie o código de barras do boleto', style: AppTextStyles.buttonBackground),
          ),

          body: Column(children: [
            Expanded(child: Container(
              color: Colors.black,
            )),

            Expanded(
              flex: 2,
              child: Container(
              color: Colors.transparent,
            )),

            Expanded(child: Container(
              color: Colors.black.withOpacity(0.6),
            ))
          ]),

          bottomNavigationBar: SetLabelButtons(
              primaryLabel: 'Inserir código do boleto',
              primaryOnPressed: (){},
              secondaryLabel: 'Adicionar da galeria',
              secondaryOnPressed: (){}
          ),

        ),
      ),
    );*/
  }
}
