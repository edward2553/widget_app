import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum ETransportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  ETransportation selectedTranspotation = ETransportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Dveloper mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTranspotation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar por carro'),
                value: ETransportation.car,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(() {
                      selectedTranspotation = ETransportation.car;
                    })),
            RadioListTile(
                title: const Text('By boat'),
                subtitle: const Text('Viajar por bote'),
                value: ETransportation.boat,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(() {
                      selectedTranspotation = ETransportation.boat;
                    })),
            RadioListTile(
                title: const Text('By plane'),
                subtitle: const Text('Viajar por avion'),
                value: ETransportation.plane,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(() {
                      selectedTranspotation = ETransportation.plane;
                    })),
            RadioListTile(
                title: const Text('By submarine'),
                subtitle: const Text('Viajar por submarino'),
                value: ETransportation.submarine,
                groupValue: selectedTranspotation,
                onChanged: (value) => setState(() {
                      selectedTranspotation = ETransportation.submarine;
                    })),
          ],
        ),
        
        CheckboxListTile(
          title: const Text('Breakfast?'),
          subtitle: const Text('Do you want some breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Lunch?'),
          subtitle: const Text('Do you want some lunch?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Dinner?'),
          subtitle: const Text('Do you want some dinner?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],
    );
  }
}
