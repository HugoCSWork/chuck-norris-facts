import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

Widget leadingImage({
  @required String iconUrl,
}) {
  return CircularProfileAvatar('',
      radius: 20,
      child: CachedNetworkImage(
        imageUrl: iconUrl,
        fit: BoxFit.fill,
        placeholder: (context, url) => Center(
          child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(1),
            child: const CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
  );
}