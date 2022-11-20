import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:tiktok_fy_page/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size appBarSize = AppBar().preferredSize;
    final double toolBarSize = MediaQuery.of(context).viewPadding.top;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(appBarSize.width, appBarSize.height+toolBarSize),
        child: Container(
          color: Colors.transparent,
          height: double.infinity,
          padding: EdgeInsets.only(
            top: toolBarSize,
            left: Consts.padding1,
            right: Consts.padding1
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Consts.transBlack,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/more.svg', color: Consts.iconColor,)
                ),
              ),
              
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Consts.transBlack,
                  borderRadius: BorderRadius.circular(Consts.radius)
                ),
                child: Wrap(
                  spacing: 8,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          top: 3,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Consts.colorRed,
                                border: Border.all(color: Colors.white, width: 1)
                            ),
                          )
                        ),
                        
                        ClipRRect(
                          borderRadius: BorderRadius.circular(Consts.radius),
                          child: Material(
                            color: Colors.transparent,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap
                              ),
                              child: const Text('Following', style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        )
                      ],
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(Consts.radius),
                      child: Material(
                        color: Consts.colorRed,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap
                          ),
                          child: const Text('For You', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                )
              ),

              CircleAvatar(
                backgroundColor: Consts.transBlack,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(IconlyLight.search, color: Consts.iconColor)
                ),
              )
            ],
          ),
        )
      ),

      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset('assets/images/actu 1.webp', fit: BoxFit.fill)
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset(0.5, 0.2),
                  end: FractionalOffset(0.5, 1.0),
                  colors: [
                    Colors.transparent,
                    Consts.colorBlack
                  ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Wrap(
                      spacing: 18,
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/heart.svg',
                                      width: 24, height: 24, color: Colors.white
                                    ),
                                    Text('131.2M', style: textTheme.titleSmall,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ),

                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/message.svg',
                                      width: 24, height: 24, color: Colors.white
                                    ),
                                    Text('100K', style: textTheme.titleSmall,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ),

                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/share.svg',
                                      width: 24, height: 24, color: Colors.white
                                    ),
                                    Text('Share', style: textTheme.titleSmall,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        )
                      ],
                    ),
                  ),

                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(radius: 26, backgroundColor: Consts.colorRed),
                    title: Text('Le..Corp', style: textTheme.titleLarge?.copyWith(height: 2.6)),
                    subtitle: Text(
                      'See how i relax my body easily at home. #home #outfit #relax',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleMedium?.copyWith(color: Colors.grey.shade400),
                    ),
                  ),

                  Wrap(
                    spacing: 12,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/music.svg', width: 16, height: 16, color: Colors.white,),
                      Text(
                        'Rihanna: rehab',
                        style: textTheme.titleSmall?.copyWith(letterSpacing: 1.2, color: Colors.grey.shade400),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          decoration: BoxDecoration(
            color: Consts.colorBlack.withOpacity(0.94),
            borderRadius: BorderRadius.circular(36),
            border: Border.all(
              color: Consts.colorGrey,
              width: 1
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/home.svg', width: 24, height: 24, color: Colors.white,),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/heart.svg', width: 24, height: 24, color: Consts.colorGrey,),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/message.svg', width: 24, height: 24, color: Consts.colorGrey),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/user.svg', width: 24, height: 24, color: Consts.colorGrey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
