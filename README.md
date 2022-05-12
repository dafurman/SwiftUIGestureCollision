# Gesture Collision with SwiftUI + UIKit

This project demonstrates a bug - or at least unexpected behavior - that occurs when combining UIKit with SwiftUI.

Given the following view structure:

UIHostingController </br>
-- A SwiftUI View as `UIHostingController.view` </br>
---- A SwiftUI `Button` </br>
---- A UIView with a gesture recogznier, added as a subview to `UIHostingController.view` </br>
    
If the SwiftUI Button and the UIView are overlaid, a tap on the UIView will be recognized, but also pass through to the SwiftUI Button, triggering a tap on it as well.

Expected behavior is that the UIView, being on top, would absorb the touch and the SwiftUI Button would have no knowledge of the interaction.

Try enabling `usesTouchAbsorbingView` in `ContentView` to see a workaround in use.
