import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortbit/utils/custom_widgets/custom_bounce.dart';

import '../../utils/common_methods/navigation_method.dart';
import '../EditProfilePage/bloc/updateprofile_bloc.dart';
import 'bloc/avtar_bloc.dart';

class AvatarPage extends StatefulWidget {
  final int currentAvatar;

  const AvatarPage({super.key, required this.currentAvatar});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    inFun();
  }

   int selectedIndex=0;

  String ? selectedIcon;

  inFun() {
    print("current Avatar===>>> ${widget.currentAvatar}");
    final bloc = context.read<AvtarBloc>();
    bloc.add(AvatarListingApi());
    selectedIndex=widget.currentAvatar;
    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return BlocBuilder<AvtarBloc, AvtarState>(
      builder: (context, state) {
         return Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: CustomBounce(
                onPressed: (){

                  final bloc=context.read<UpdateprofileBloc>();

                  Map<String,String> data={
                    "avtar":selectedIcon.toString()
                  };
                  bloc.add(UpdateProfileApi(data: data,context: context));
                },
                child: Container(
                  decoration: ShapeDecoration(
                    color: Color(0xFF6000FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 130, right: 130, top: 15, bottom: 15),
                    child: Text(
                      "Save",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              // toolbarHeight: height * 0.08,
              leading: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          navPop(context: context);
                        },
                        child: Center(child: Icon(Icons.arrow_back))),
                  )),
              leadingWidth: 80,
              title: Text(
                'Avatar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            body: state.avatarListingModel == null
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: state.avatarListingModel!.data!.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 35,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      // ImageList = state.avatarListingModel!.data!
                      //     .map((e) => e.icon)
                      //     .toList();
                      // int avatarIndex = ImageList.indexWhere((icon) => icon == widget.currentAvatar);
                      // selectedIndex=avatarIndex;
                      //
                      // print("ImageList===>>> $ImageList");
                      // print("avatarIndex $avatarIndex");

                      return
                        CustomBounce(
                          onPressed: (){
                            selectedIndex=index;
                            selectedIcon=state.avatarListingModel!.data![selectedIndex].icon;
                            setState(() {

                            });

                            print("selectdIndex==>>$selectedIndex");
                            print("selectdIcon==>>$selectedIcon");



                            },
                          child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                decoration: BoxDecoration(
                                    color:  selectedIndex==index?Colors.red:Colors.black,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: ClipOval(
                                      child: Image.network(
                                        state.avatarListingModel!.data![index].icon
                                            .toString(),
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 100,
                                      )),
                                ),
                              )),
                        );

                      },
                  ));
      },
    );
  }
}
