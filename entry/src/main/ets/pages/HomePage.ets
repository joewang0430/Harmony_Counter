@Entry
@Component
struct HomePage {
  build() {
    Column({ space: 5 }) {
      // Create a schedule for 24 hours, each hour is a ListItem
      ForEach(Array.from({ length: 24 }, (_, i) => i), (hour) => {
        TimeListItem(hour: hour)
      })
    }
    .padding(16)
    .backgroundColor(Color.DarkBlue)
  }
}

@Component
struct TimeListItem {
  @State hour: number;

  build() {
    ListItem {
      // indicate time time quantum
      Text(`${hour}:00`)
        .fontSize(18)
        .fontColor(Color.White)
        // clicking event: Go to the alarm setting page
        .onClick(() => {
          Router.push({ uri: "pages/AlarmSettingPage", params: { hour: this.hour } });
        })
    }
  }
}
