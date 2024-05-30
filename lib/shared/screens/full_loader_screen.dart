import 'package:five_seconds/features/apps_installed/presentation/views/view_apps_intalled.dart';
import 'package:five_seconds/shared/bloc/permmisions_bloc.dart';
import 'package:five_seconds/shared/screens/screens_barriel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FullLoaderScreen extends StatelessWidget {
  const FullLoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermmisionsBloc, PermissionsState>(
      builder: (context, state) {
        return state.isReaddy
            ? const HomeApps(
                childView: ViewAppsInstalled(),
              )
            : const PermissesAccessScreen();
      },
    );
  }
}
