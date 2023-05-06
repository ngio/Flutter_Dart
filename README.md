# Flutter_Dart
Flutter, Dart 이용한 Android, iOS 앱 개발


<a href="https://flutter-ko.dev/docs/get-started/install" target="_blank" >Flutter 설치</a>

<a href="./example/lib/main.dart" >flutter_adid_plugin 0.0.1</a>

<a href="https://flutter-ko.dev/docs/get-started/flutter-for/web-devs"  target="_blank"  >Flutter for web developers</a>

-----------------------------------

* 멀쩡한 앱을 Flutter 앱으로 다시 짠 이유 - 일본 1위 배달 앱, 두 번째 Recode ( https://engineering.linecorp.com/ko/blog/demaecan-2nd-recode-kmm-to-flutter )


Flutter는 Dart 언어를 사용합니다. 따라서 Dart 언어에 익숙해지지 못하면 Flutter로 제대로 개발할 수 없습니다. 
이때 Dart tour 문서( https://dart.dev/language )를 참고하면 언어 특징을 빠르게 훑어보기 좋습니다. 
Dart 언어의 상세한 부분까지 잘 소개한 문서입니다. 
Dart 언어를 개략적으로 이해한 후에 Flutter Codelab 페이지( https://docs.flutter.dev/codelabs )를 읽어보면 Flutter를 보다 쉽게 이해할 수 있습니다.


Recode는 Dart 언어를 익히고 Flutter에 익숙해지는 것으로 시작해서 시작부터 출시까지 약 3개월 정도 진행했습니다. 
제한된 기간 내에 1.0과 3.0 모드를 모두 제공해야 했으므로 공식 문서를 보며 Dart와 Flutter를 학습하면서 
 동시에 스펙 - 뷰 상태 - 로직을 잘 분리해 나가며 학습과 개발을 동시에 진행했습니다. 
Recode 시작 당시에는 Flutter SDK 3.0.2이었고, 출시할 즈음에는 Flutter SDK 3.0.5로 개발했습니다.


Flutter는 선언형 UI 개발을 하기 때문에 가장 큰 고민 거리는 UI 상태 관리입니다. 상태 관리와 관련해서 provider와 bloc, getx 등의 패키지가 있는데요.
처음 Recode를 시작할 때 패키지 학습 비용 및 패키지 의존성으로 인한 부담 때문에 직접 구현하는 형태로 진행했습니다. 
상태 변경을 위해서 ChangeNotifier를 활용했고, 상태 집단은 StateModel로 관리했습니다. 
제품 개발에 반드시 필요한 패키지(예를 들어 FlutterFire, google_maps_flutter 등)가 아니라면 가급적 직접 구현하는 것을 원칙으로 정했습니다.

https://dart.dev/
https://dart.dev/language
https://docs.flutter.dev/codelabs 

* 플랫폼별로 SDK나 패키지 작동이 달랐던 사례

플랫폼별로 SDK나 패키지 작동이 기대와는 조금씩 달랐던 경우도 있었습니다. 
예를 들어 앱 내 진동 효과를 발생시키는 코드를 플랫폼별로 다르게 구현해야 하는 경우입니다. 
Android는 Vibration 패키지( https://pub.dev/packages/vibration )에서 제공하는 인터페이스를, 
iOS에서는 Flutter SDK에서 제공하는 인터페이스를 사용하는 것이 요구 사항에 가장 적합하게 작동했습니다. 

스펙에는 진동이 300ms, 500ms, 1000ms와 같은 방식으로 정의돼 있었는데 플랫폼별로 작동에 차이가 있어서 이를 구현할 때 분기가 필요했습니다. 




========================================================================

#### 1. 2022-03-30 뭔가 시작할 시기가 온거 같은데. 
아직이다~
not yet~


...

    2023-05-04 엑셀보다 기능이 더 없는 단순한 일지를 만들어볼까. 
    
    
-
