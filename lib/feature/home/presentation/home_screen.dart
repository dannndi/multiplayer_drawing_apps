import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_skeleton/core/bloc/user_cubit/user_cubit.dart';
import 'package:flutter_skeleton/core/component/snackbar/info_snackbar.dart';
import 'package:flutter_skeleton/core/route/app_route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flatric.io"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.pencil_outline,
              size: 86,
            ),
            const SizedBox(height: 16),
            Text(
              "Draw and Guess !",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Username",
                prefixIcon: const Icon(
                  CupertinoIcons.at,
                ),
              ),
              maxLines: 1,
              textInputAction: TextInputAction.done,
              onChanged: context.read<UserCubit>().setUsername,
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text("Start"),
                onPressed: () {
                  final username = context.read<UserCubit>().state.username;
                  if (username.isEmpty) {
                    showInfoSnackBar(context, "Username cannot be empty");
                  } else {
                    Navigator.pushNamed(context, AppRouteName.listRoom);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
