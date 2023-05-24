part of 'onboarding.dart';

class OnboardingContents {
  final String title;
  final String desc;
  final String image;
  

  const OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  const OnboardingContents(
    title: "اسكتشف مكانك",
    image: "asset/image/onb1.png",
    desc:"add1"
  ),
  const OnboardingContents(
    title: "احجز مكانك",
    image: "asset/image/onb2.png",
    desc:"add2"
  ),
  const OnboardingContents(
    title: "احجز سريرك ",
   image: "asset/image/onb3.png",
    desc:"add3"
  ),
  
];
