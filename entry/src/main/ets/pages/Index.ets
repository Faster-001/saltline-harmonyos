
import { webview } from '@kit.ArkWeb';

@Entry
@Component
struct Index {

  controller: webview.WebviewController = new webview.WebviewController();

  build() {
    Column() {
      Web({
        src: $rawfile("Saltline.html"),
        controller: this.controller
      })
        .expandSafeArea()
        .domStorageAccess(true)
        .databaseAccess(true)
        .horizontalScrollBarAccess(false)
        .verticalScrollBarAccess(false)
        .zoomAccess(false)
        .mediaPlayGestureAccess(false)
        .onFullScreenEnter((event) => {
          event.handler.exitFullScreen();
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
    .expandSafeArea()
  }
}
