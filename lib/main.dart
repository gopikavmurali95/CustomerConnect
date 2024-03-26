import 'dart:convert';

import 'package:customer_connect/feature/data/di/injectable.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:customer_connect/feature/view/LoginScreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureinjection();

  LoginUserModel? user = await getuserdata();

  runApp(MyApp(
    user: user,
  ));
}

Future<LoginUserModel?> getuserdata() async {
  final SharedPreferences sharedprefs = await SharedPreferences.getInstance();

  String userString = sharedprefs.getString('user') ?? '';

  if (userString.isEmpty) {
    return null;
  }

  final LoginUserModel user = LoginUserModel.fromJson(jsonDecode(userString));

  return user;
}

class MyApp extends StatelessWidget {
  final LoginUserModel? user;
  const MyApp({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArScrollCtrlCubit>(
          create: (context) => ArScrollCtrlCubit(),
        ),
        BlocProvider(
          create: (context) => getit<UserLoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PickingAndLoadingCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerTransactionBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SalesOrderCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadingHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadingDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ArHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ArDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomersListBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInsTrnCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInsArHeaderBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white)),
          home: user == null
              ? const LoginScreen()
              : HomeScreen(
                  user: user!,
                ),
        ),
      ),
    );
  }
}
