Flutter Web in 2023 — is it good for you?

https://medium.com/@david_90860/flutter-web-in-2023-is-it-good-for-you-4c2d51129b80


![img](https://miro.medium.com/v2/resize:fit:720/format:webp/1*aUeSwjw7R01vHZfzsN7ABA.png)


My website developed with Flutter: https://keeplist.com/

Before we get started, some transparency about my experience with Flutter.

I am a web developer with 7 years experience in advanced java script + react. Before, I spent 10 years developing windows applications using c++. Yes, i’m a real computer nerd.

![img](https://miro.medium.com/v2/resize:fit:720/format:webp/1*lWbaRKZn483AZX6nPddN2w.jpeg)

A year ago, I started working on a project that had to be cross platform (Android, iOS, Web)

As a JavaScript developer, I developed mobile apps in the past with Android Studio + JAVA that were based on a hybrid WebView. I wanted to get to the next level and build native mobile apps, and learning Kotlin + Swift seemed too complicated.

I started developing with Expo + React Native, but at a early stage I realized Expo has a glass ceiling when it comes to high level features.

I kept reading awesome things about Flutter, and one day while I was at the pool with my son, I decided to jump into the water. Not the pool water, the Flutter water!

With RN (React Native) it took me about 2 months to develop a cross platform sorted list (vertical re-orderable list with drag and drop)

So that’s the first thing I tried with flutter, and it worked pretty great out of the box!

So I decided to start the project with Flutter, and with very little experience in flutter and Dart, everything really ticked amazingly, and I was in love 💕with my new framework.
![img](https://miro.medium.com/v2/resize:fit:640/format:webp/1*jOlG4OOSQHXL08-zHZennw.jpeg)

I can’t even begin to describe how great the Flutter framework is! You get tons of GUI widgets (Components if you are coming from React) That work great and are super easy to work with. Almost every customization you can think of, it’s there! And the documentation from the flutter team at https://flutter.dev/ is excellent. They have short videos for almost every widget in the framework. If you are looking for advanced tutorials, there are tons on youtube. The flutter community has grown very big, and you can find answers instantly on StackoverFlow and videos for every question you have.

![img](https://miro.medium.com/v2/resize:fit:640/format:webp/1*lEy_0MOsVkAeV88T2WR5eA.png)

My app, developed with Flutter
The developer experience is really top shelf, and the Flutter IDE for VS code is amazing, and you debug super fast with the “hot reload” feature that enables you see to see changes immediately without building again. Flutter is used with Dart, which was developed by Google, and I really love it. Everything in the language just seems so simple and intuitive, and things just make sense to me. I feel like I am using an advanced version of Javascript + TypeScript.

![img](https://miro.medium.com/v2/resize:fit:720/format:webp/1*2gBabDG-AqLonZczNnmXKA.png)

While Dart is a real smooth transition from JavaScript, the Flutter Widget tree takes a while to gets used to. When you see Flutter code for the first time, at least when coming from Javascript or React, you get really confused. There is definitely a learning curve, but as an experienced programmer after a few tutorials I was up and running. And when you get used to it, it’s super powerful and dynamic.

And, of-course, it’s cross platform! While I used it for the Web, Android, and iOS, it also supports Windows, Linux, and MAC! I think Flutter is a game changer in this aspect, because it means that much smaller teams can get apps to the market super fast, and reach a lot of users with support for nearly every device. There are other platforms that claim to do the same, but Flutter is the real deal.

![img](https://miro.medium.com/v2/resize:fit:720/format:webp/1*8Ut5RLZI54HNi1Z_r9IaYQ.png)

But, things ticked a lot better on mobile than on web. That being said, I still have to say that flutter web is still great, but in my experience just not yet perfect. I am still using it now in production to run my website, and the website looks and feels awesome! But, I did find some difficulties with developing for the web, and I will share them with you at the article.

TEXT IN A FLUTTER WEBSITE IS NOT REAL TEXT 😰
You are reading through this article, and all of a sudden you remember of a sentence you want to copy and paste and send to a friend. What do you do? You simply click ctrl+f, you highlight the text, copy it, and paste on any app you desire. With Flutter web, none of these options are available, because what gets rendered on the screen is not really text, it’s actually an image. So you can’t search in it, you can’t highlight it, and you can’t copy it.

![img](https://miro.medium.com/v2/resize:fit:640/format:webp/1*P9VxTgGOLmXk18-JxgvNBQ.jpeg)

And you also don’t have a built-in browser spell check. Which means that users cannot see if the text they are typing has typos. This might seem as something small to some of you, but it’s actually what bothers me about Flutter web the most. Web users today feel free to type a lot because they know the browser has their back and will fix their typos and show them the nice red underline when they misspell. Also, developing a spell checker as a developer is very hard, especially when your users might type not only in English. There is an open Github Issue for this, but it’s on P4 which means it might take a while before it gets resolved. Regarding the text search feature, this is something that you can develop on your own, if your app has a search feature. But it won’t work for you out of the box.

![img](https://miro.medium.com/v2/resize:fit:720/format:webp/1*0O6tYYP1MZa28q1yDdUtcQ.jpeg)

https://github.com/flutter/flutter/issues/53585

Spellcheck on Flutter Web · Issue #40682 · flutter/flutter
Supporting spellcheck for text editing in Flutter Web Engine
github.com

The website takes a few seconds to load 🥱
Users today expect sites to load up immediately, especially on good internet connections. You see a link, you press on it, and you want to something in less than a second. If you don’t get it, you go to the next site. Everything happens super fast. But websites created with flutter, after optimization, take about 3–5 seconds to load, until you see the complete page. If you develop a nice loader (Which you can display using JAVASCRIPT / HTML before the Flutter widgets are loaded) it’s actually not that bad. This is what I did. But if your users use your app or website a lot, the slow loading time will be a bad user experience for them.


My website load
The website feels slow at times 😩
Well, my wife always claims I am super slow. So who am I to complain?

When developing for the web with Flutter, your web app feels high end, and almost all Flutter widgets that look great on the mobile, also look great on the web. They are animated, they are sharp, and generally look great. But, my website feels sluggish at times. Buttons can have delayed response, and also the animations can become slower. Overall, even though a website developed withFlutter can really look amazing, it feels less performant than pure HTML / JAVASCRIPT


UP and down Arrows don’t scroll the page
The keyboard is always faster than the mouse, and users press up and down all the time to scroll the page. Out of the box, this does not work with flutter. Pressing up and down has no effect on the scrollbar. I am assuming you can write code to fix it (Flutter has an awesome widget called GestureDetector) but it doesn’t work out of the box.

SEO
While i’m not an SEO expert, i’m not sure that web engines know how to parse content from Flutter web, espceially due to the fact that it’s not real text. Since Flutter is actually from GOOGLE which is a search company, it stands to reason that this will be solved in the near future, and Google will know how to parse Flutter content.

THE VERDICT

So, Flutter web is obviously not yet mature, and your web users won’t get the best experience out of the box if you use Flutter. While some of the things discussed here can be solved with some custom development, the investment might not be worth it.

So should you develop a website with Flutter in 2023? If you need only a website without mobile apps, the answer is obviously no. There are other Frameworks that are a lot more mature and advanced for the web than Flutter.

But if you are developing an app that needs to be cross platform, the amount of work you will save from using just one codebase is incredible and might be worth it. It really depends on what are your most important platforms and when is your release date. If most of your users will come from the web, I will definitely advise at this point to use some other framework for your website, and Flutter for your mobile apps.

If you are aiming mostly for Mobile users and you are at a stage where you want to get to the market fast, I would advise sticking with Flutter web. Some advanced users might complain and won’t like the user experience, but there is no doubt that the website design will look great and also the animations (Hoping your users have good computers).

Also, the Flutter team are working on improvements all the time, and there is a good chance that a year from now some of the issues mentioned here will be solved. Developing new apps and marketing them takes a while, so it might be worth to be patient. BUT at the same time, when marketing new apps, the user experience must be great out of the box so people will come back. And when they don’t have a spell check and can’t search text, they might be moving to the next alternative.

BIG THANKS TO THE FLUTTER TEAM!

Google really developed something amazing here, and in a few years from now, Flutter can become the most used frontend framework on all platforms, and startups will have their ideas out there super fast.

I can’t really explain how great Flutter is, you need to experience it for yourself to know what I am talking about. So, really, thank you for every person in the Flutter development team, you really developed something great here!

And also a big thank you to Johannes Milke from heyflutter.com, he has some great tutorials on youtube for Flutter! I really learned a lot from watching his videos. (Links are below)

To view my to do list app developed with Flutter, see:

WEB: https://keeplist.com/

Android: https://play.google.com/store/apps/details?id=com.keeplist

iPhone: https://apps.apple.com/app/keeplist/id1626699174
