DaiVolume
=========

I DON'T want to use MPVolumeView.

DaidoujiChen

daidoujichen@gmail.com

總覽
======
因為不能直接使用 setVolume 了, 官方希望使用 MPVolumeView 作為替代, 但是實際上, 很多時候我並不想用官方內建的聲音 bar, 但是我又不想看到 setVolume 的 warning, 因而寫了一個控制聲音的轉化寫法, 沒什麼技巧, 只是懶惰.

支援
======
- ios7.0 up, 應該說我只有在 7.0 以上驗證過.

簡易使用
======
只需要 call

    [DaiVolume volume];

就可以得到目前音量,
call

    [DaiVolume setVolume:0.2f];

則是把音量設定到 20% 的位置.
