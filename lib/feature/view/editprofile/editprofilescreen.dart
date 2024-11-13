import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/edit_profile_in_model/edit_profile_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart';
import 'package:customer_connect/feature/view/editprofile/widgets/editfieldwidget.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditProfileScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  const EditProfileScreen(
      {super.key, required this.user, required this.customer});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

final _mailctrl = TextEditingController();
final _mobctrl = TextEditingController();
final _whatsappctrl = TextEditingController();
final _formkey = GlobalKey<FormState>();

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  void initState() {
    context.read<CusProfileBloc>().add(GetCusProfileEvent(
        userID: widget.user.usrId ?? '', cusID: widget.customer.cusId ?? ''));
    context.read<EditCusProfileBloc>().add(const ClearEditStateEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.editProfile,
          style: appHeading(),
        ),
      ),
      body: BlocListener<EditCusProfileBloc, EditCusProfileState>(
        listener: (context, state) {
          state.when(
            editProfileState: (editrep) {
              if (editrep != null) {
                context.read<CusProfileBloc>().add(GetCusProfileEvent(
                    userID: widget.user.usrId ?? '',
                    cusID: widget.customer.cusId ?? ''));
                Navigator.pop(context);
                if (editrep.res == '1') {
                  showDialog(
                    context: context,
                    builder: (context) 
                    {
                      if(Platform.isIOS)
                      {
                        return CupertinoAlertDialog(
                      
                      title: Text(selectedLocale?.languageCode == "en"
                          ? editrep.title ?? ''
                          : editrep.arTitle ?? ''),
                      content: Text(AppLocalizations.of(context)!
                          .yourProfileHasbeenUpdated),
                      actions: [
                        CupertinoDialogAction(
                          child: Text(
                            AppLocalizations.of(context)!.ok,
                            style: kfontstyle(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                      }
                      else {
                        return AlertDialog(
                          title: Text(selectedLocale?.languageCode == "en"
                          ? editrep.title ?? ''
                          : editrep.arTitle ?? ''),
                      content: Text(AppLocalizations.of(context)!
                          .yourProfileHasbeenUpdated),
                      actions: [
                        CupertinoDialogAction(
                          child: Text(
                            AppLocalizations.of(context)!.ok,
                            style: kfontstyle(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        )
                      ],
                        );
                      }
                    }
                  );
                } else {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (context) {
                      if(Platform.isIOS)
                      {
                        return CupertinoAlertDialog(
                      title: Text(selectedLocale?.languageCode == "en"
                          ? editrep.title ?? ''
                          : editrep.arTitle ?? ''),
                      content: Text(AppLocalizations.of(context)!
                          .yourProfileUpdationFailed),
                      actions: [
                        CupertinoDialogAction(
                          child: Text(
                            AppLocalizations.of(context)!.ok,
                            style: kfontstyle(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                      }
                      else{
                        return AlertDialog(
                           title: Text(selectedLocale?.languageCode == "en"
                          ? editrep.title ?? ''
                          : editrep.arTitle ?? ''),
                      content: Text(AppLocalizations.of(context)!
                          .yourProfileUpdationFailed),
                      actions: [
                        CupertinoDialogAction(
                          child: Text(
                            AppLocalizations.of(context)!.ok,
                            style: kfontstyle(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                        );
                      }
                    }
                  );
                }
              }
            },
            editFailedState: () {},
            editLoadingState: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) => const CupertinoActivityIndicator(
                        animating: true,
                        color: Colors.red,
                        radius: 30,
                      ));
            },
          );
        },
        child: BlocConsumer<CusProfileBloc, CusProfileState>(
          listener: (context, state) {
            state.when(
              getCusProfileState: (profile) {
                if (profile != null) {
                  _mailctrl.text = profile.cusEmail ?? '';
                  _mobctrl.text = profile.cusPhone ?? '';
                  _whatsappctrl.text = profile.cusWhatsappNumber ?? '';
                }
              },
              getcusprofileFailedState: () {},
            );
          },
          builder: (context, state) {
            return state.when(
              getCusProfileState: (profile) => profile == null
                  ? const Center(
                      child: CupertinoActivityIndicator(
                        animating: true,
                        color: Colors.red,
                        radius: 30,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            EditProfilefieldWidget(
                              title: AppLocalizations.of(context)!.mailId,
                              icon: 'assets/svg/mail.svg',
                              controller: _mailctrl,
                            ),
                            EditProfilefieldWidget(
                              title: AppLocalizations.of(context)!.mobileNumber,
                              icon: 'assets/svg/phone.svg',
                              controller: _mobctrl,
                            ),
                            EditProfilefieldWidget(
                              title: AppLocalizations.of(context)!.whatspNo,
                              icon: 'assets/svg/whatsapp_1.svg',
                              controller: _whatsappctrl,
                            )
                          ],
                        ),
                      ),
                    ),
              getcusprofileFailedState: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailable,
                  style: kfontstyle(),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Card(
        margin: const EdgeInsets.all(0),
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        shadowColor: Colors.grey,
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurStyle: BlurStyle.outer,
                blurRadius: 1,
                offset: Offset(-5, 0))
          ]),
          height: 50.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    // height: 25.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey)),
                    // minWidth: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      AppLocalizations.of(context)!.cancel,
                      style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    // height: 25.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xff7abc77),
                    // minWidth: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      AppLocalizations.of(context)!.update,
                      style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        context
                            .read<EditCusProfileBloc>()
                            .add(const EditLoadingEvent());
                        context.read<EditCusProfileBloc>().add(
                              EditProfileEvent(
                                profile: EditProfileInModel(
                                    cusId: widget.customer.cusId,
                                    mail: _mailctrl.text,
                                    mob: _mobctrl.text,
                                    whatsappNo: _whatsappctrl.text),
                              ),
                            );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
