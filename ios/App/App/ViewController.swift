import UIKit
import Capacitor
import QuartzCore

class ViewController: CAPBridgeViewController {

    private var proMotionLink: CADisplayLink?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func capacitorDidLoad() {
        webView?.layer.drawsAsynchronously = true
        webView?.isOpaque = true
        webView?.backgroundColor = .black
        webView?.scrollView.isScrollEnabled = false
        webView?.scrollView.bounces = false

        // ProMotion: display'i max refresh rate'e zorla (iPhone 15 Pro / iPad Pro = 120Hz)
        // WKWebView'ın requestAnimationFrame otomatik olarak buna sync olur
        if #available(iOS 15.0, *) {
            let maxFPS = Float(UIScreen.main.maximumFramesPerSecond)
            if maxFPS > 60 {
                proMotionLink = CADisplayLink(target: self, selector: #selector(proMotionTick))
                proMotionLink?.preferredFrameRateRange = CAFrameRateRange(
                    minimum: 60, maximum: maxFPS, preferred: maxFPS
                )
                proMotionLink?.add(to: .main, forMode: .common)
            }
        }
    }

    @objc private func proMotionTick() {}
}
