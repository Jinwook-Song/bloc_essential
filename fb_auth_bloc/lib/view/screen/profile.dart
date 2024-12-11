import 'package:fb_auth_bloc/bloc/bloc.dart';
import 'package:fb_auth_bloc/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_load);
  }

  void _load(Duration _) {
    final uid = context.read<AuthBloc>().state.user!.uid;
    context.read<ProfileBloc>().add(GetProfileEvent('uid'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.status == ProfileStatus.failure) {
            errorDialog(context, state.error);
          }
        },
        builder: (context, state) {
          return switch (state.status) {
            ProfileStatus.initial => SizedBox.shrink(),
            ProfileStatus.loading => Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ProfileStatus.failure => Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/error.png',
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                    ),
                    Gap(20),
                    Text(
                      'Ooops!\nTry again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ProfileStatus.success => Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      image: state.user.profileImage,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Gap(10),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '-id: ${state.user.id}',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            '- name: ${state.user.name}',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            '- email: ${state.user.email}',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            '- point: ${state.user.point}',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            '- rank: ${state.user.rank}',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          };
        },
      ),
    );
  }
}
