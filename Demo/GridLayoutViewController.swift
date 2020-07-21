
import Foundation

import AsyncDisplayKit
import TextureSwiftSupport

final class GridLayoutViewController: DisplayNodeViewController {

  let body = GridLayoutViewController.body()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
  }

  override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {

    return LayoutSpec {
      body
        .padding(capturedSafeAreaInsets)
    }
  }

  static func body() -> AnyDisplayNode {

    let button: [ASDisplayNode] = [
      Mocks.ButtonNode(),
//      Mocks.ButtonNode(),
//      cellA()
    ]

    return AnyDisplayNode { _, _ in
      LayoutSpec {
        VGridLayout(columns: [
          .init(.flexible()),
          .init(.flexible()),
          .init(.flexible())
        ]) {
          button
        }
      }
    }

  }

  static func cellA() -> AnyDisplayNode {

    let text = ASTextNode()

    text.attributedText = "Hello".styled {
      $0.foregroundColor(.white)
        .font(.preferredFont(forTextStyle: .title1))
    }

    let background = ShapeLayerNode.roundedCorner(radius: 10)
    background.shapeFillColor = Mocks.fillColor

    return AnyDisplayNode { _, _ in
      LayoutSpec {
        VStackLayout {
          text
        }
        .background(background)
      }
    }

  }

  static func cellB() -> AnyDisplayNode {

    let text = ASTextNode()

    text.attributedText = "HelloHelloHelloHelloHello".styled {
      $0.foregroundColor(.white)
        .font(.preferredFont(forTextStyle: .title1))
    }

    let background = ShapeLayerNode.roundedCorner(radius: 10)
    background.shapeFillColor = Mocks.fillColor

    return AnyDisplayNode { _, _ in
      LayoutSpec {
        VStackLayout {
          text
        }
        .background(background)
      }
    }
  }
}
