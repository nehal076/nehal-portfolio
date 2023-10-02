import 'package:nehaljaisalmeria/config/assets.dart';
import 'package:nehaljaisalmeria/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nehal Jaisalmeria',
                textScaleFactor: 4,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Angular. Nodejs. Flutter.\nLikes Music.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'Nehal Jaisalmeria'),
                  ),
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'Nehal Jaisalmeria'),
                  ),
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            ThemeSwitcher.of(context).isDarkModeOn
                                ? Assets.medium
                                : Assets.medium_light)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_MEDIUM, 'Nehal Jaisalmeria'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'Nehal Jaisalmeria'),
                  ),
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'Nehal Jaisalmeria'),
                  ),
                  IconButton(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'Nehal Jaisalmeria'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
