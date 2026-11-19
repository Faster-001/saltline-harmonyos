
@Entry
@Component
struct Index {

  build() {
    Column() {
      Text('Hello World')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#0000ff')
    .justifyContent(FlexAlign.Center)
    .expandSafeArea(
      [SafeAreaType.SYSTEM, SafeAreaType.CUTOUT],
      [SafeAreaEdge.TOP, SafeAreaEdge.BOTTOM, SafeAreaEdge.START, SafeAreaEdge.END]
    )
  }
}
