@Component
struct AlarmSettingPage {
  @State selectedHour: number;
  @State selectedMinute: number;
  @State selectedRingtone: string;

  private ringtones = ["Bell 1", "Bell 2", "Bell 3", "Bell 4"];

  build() {
    Column({ space: 10 }) {
      // show the current selected hour
      Text(`Setting Alarm for ${this.selectedHour}:00`).fontSize(20).fontColor(Color.White)

      // set the minute
      Picker({ range: Array.from({ length: 60 }, (_, i) => i.toString()) })
        .selected(this.selectedMinute)
        .onSelect((index) => { this.selectedMinute = index })

      // bell selector
      Picker({ range: this.ringtones })
        .selected(this.selectedRingtone)
        .onSelect((index) => { this.selectedRingtone = this.ringtones[index] })

      // save button
      Button("Save")
        .onClick(() => {
          // Save the data selected by the user and return to the main page
          this.saveAlarmSetting();
          Router.back();
        })
    }
    .padding(16)
    .backgroundColor(Color.DarkBlue)
  }

  saveAlarmSetting() {
    // Save the alarm time and ringtone set by the user to the local storage
    storage.set(`${this.selectedHour}:${this.selectedMinute}`, this.selectedRingtone);
  }
}
