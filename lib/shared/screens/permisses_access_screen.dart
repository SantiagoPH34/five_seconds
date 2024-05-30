import 'package:five_seconds/shared/bloc/permmisions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PermissesAccessScreen extends StatelessWidget {
  const PermissesAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<PermmisionsBloc, PermissionsState>(
        builder: (context, state) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: state.systemAlarmWindows
              ? const EnablePackageUsageStats()
              : const EnableSystemAlarmWindows());
    }));
  }
}

class EnablePermissions extends StatelessWidget {
  const EnablePermissions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dede de habilitar los permisos'),
    );
  }
}

class EnableSystemAlarmWindows extends StatelessWidget {
  const EnableSystemAlarmWindows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Dede de habilitar el permiso para las ventanas emergentes',
            style: TextStyle(
              fontSize: 20,
              leadingDistribution: TextLeadingDistribution.even,
            )),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.black),
          ),
          onPressed: () {
            final bloc = BlocProvider.of<PermmisionsBloc>(context);
            bloc.requestSystemAlert();
          },
          child: const Text('Habilitar permiso',
              style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ],
    );
  }
}

class EnablePackageUsageStats extends StatelessWidget {
  const EnablePackageUsageStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PermmisionsBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'habilite el permiso para el seguimiento de las aplicaciones',
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(Colors.black),
          ),
          onPressed: () {
            bloc.requestAccessibilityPermission();
          },
          child: const Text(
            'Habilitar permiso',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        /*       TextButton(
            onPressed: () {
              bloc.check();
            },
            child: const Row(
                children: [Text("¿ya habilito el permiso? click aqui ")])) */
      ],
    );
  }
}
