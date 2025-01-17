import 'package:auto_size_text/auto_size_text.dart';
import 'package:cleanchess/chess/core/utilities/navigation.dart';
import 'package:cleanchess/core/clean_chess/utilities/style.dart';
import 'package:cleanchess/features/clean_chess/presentation/blocs/account_cubit.dart';
import 'package:cleanchess/features/clean_chess/presentation/blocs/auth_cubit.dart';
import 'package:cleanchess/features/clean_chess/presentation/pages/profile_screen.dart';
import 'package:cleanchess/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_client_dio/lichess_client_dio.dart';
import 'package:skeletons/skeletons.dart';

class HomepageAppbar extends StatefulWidget {
  const HomepageAppbar({super.key});

  @override
  State<HomepageAppbar> createState() => _HomepageAppbarState();
}

class _HomepageAppbarState extends State<HomepageAppbar> {
  User? user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          loggedOut: (_) {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacementNamed(context, Navigation.loginScreen);
          },
          orElse: () {},
        );
      },
      child: Container(
        width: double.maxFinite,
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _accountName(context),
                IconButton(
                  onPressed: () {
                    sl<AuthCubit>().revoke();
                  },
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              'Clean Chess',
              style: TextStyle(
                color: Colors.white.withAlpha(50),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _accountName(BuildContext context) =>
      BlocConsumer<AccountCubit, AccountState>(
        listener: (context, state) {
          state.maybeMap(
            profile: (value) {
              user = value.user;
            },
            orElse: () {},
          );
        },
        buildWhen: (previous, current) => current.maybeMap(
          profile: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) {
          final firstTry = state.maybeMap(
            initial: (_) => true,
            orElse: () => false,
          );
          if (firstTry) {
            sl<AccountCubit>().getMyProfile();
          }
          return ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.28),
            child: Skeleton(
              isLoading: state.maybeMap(
                initial: (_) => true,
                loading: (_) => true,
                orElse: () => false,
              ),
              skeleton: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(50),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: ElevatedButton(
                onPressed: () =>
                    user == null ? null : _pushToProfilePage(context),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(lightDark),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      maxRadius: 5,
                    ),
                    width5,
                    Expanded(
                      child: AutoSizeText(
                        user?.username ?? '{username}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                        maxFontSize: 16,
                        minFontSize: 12,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );

  void _pushToProfilePage(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            user: user!,
          ),
        ),
      );
}
