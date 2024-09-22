import { notification, media } from '@system';

export function scheduleAlarms() {
  // Get the alarm information set by the user
  storage.getAll().forEach((key, value) => {
    const [hour, minute] = key.split(":").map(Number);
    const ringtone = value;

    // Set scheduled tasks and play ringtones
    setAlarm(hour, minute, ringtone);
  });
}

function setAlarm(hour: number, minute: number, ringtone: string) {
  const now = new Date();
  const alarmTime = new Date();
  alarmTime.setHours(hour, minute, 0);

  if (alarmTime > now) {
    const delay = alarmTime.getTime() - now.getTime();

    setTimeout(() => {
      // play the bell
      playRingtone(ringtone);
    }, delay);
  }
}

function playRingtone(ringtone: string) {
  const audioPlayer = media.createAudioPlayer();
  audioPlayer.src = `resources/${ringtone}.mp3`;
  audioPlayer.play();
}
