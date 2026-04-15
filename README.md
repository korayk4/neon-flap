# Neon Flap

A neon-themed hyper-casual flappy bird game built with HTML5 Canvas and deployed natively to iOS & Android via Capacitor.

**[App Store](https://apps.apple.com/app/neon-flap)** | **[Google Play](https://play.google.com/store/apps/details?id=com.terraastudios.neonflap)**

## Tech Stack

- **Game Engine:** Custom HTML5 Canvas with requestAnimationFrame game loop
- **Rendering:** 2D Canvas API with neon glow effects, particle systems, and procedural animations
- **Native Wrapper:** Capacitor 8 (iOS + Android)
- **Monetization:** AdMob integration, In-App Purchases (cordova-plugin-purchase)
- **Native Features:** Haptic feedback, local notifications, share, rate prompts

## Architecture

The entire game runs in a single-file architecture (`index.html`) — a deliberate design choice for hyper-casual games where minimal load time and zero network dependency are critical. The game logic includes:

- Physics engine (gravity, velocity, collision detection)
- Procedural pipe generation with difficulty scaling
- Combo system with visual feedback
- Coin economy and scoring system
- Neon visual effects (glow, particles, trails)
- Responsive scaling for all screen sizes

## Building

```bash
# Install dependencies
npm install

# Run on iOS
npx cap sync ios
npx cap open ios

# Run on Android
npx cap sync android
npx cap open android
```

## Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/korayk4/neon-flap/main/android/app/src/main/res/drawable-port-xxxhdpi/splash.png" width="200" alt="Neon Flap">
</p>

## Developer

Built by [TerraA Studios](https://github.com/korayk4)
