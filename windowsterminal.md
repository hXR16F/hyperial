# Windows Terminal
## How to set hyperial as default shell?
### Edit hyperial settings.
Open ***hyperial.bat*** in any text editor. Then find `set windows_terminal=<value>` and change to `set windows_terminal=true`.
### Open settings.json (ctrl+,) Then paste this code.
```md
{
  "guid": "{12345678-1234-1234-1234-123456789012}",
  "icon": "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
  "name": "Hyperial",
  "startingDirectory": "%USERPROFILE%",
  "fontFace": "Cascadia code",
  "fontSize": 10,
  "cursorColor": "#FFFFFF",
  "cursorShape": "bar",
  "commandline": "C:/hyperial/hyperial.bat"
}
```
### It should look like this: 
![IMAGE](https://raw.githubusercontent.com/Nimplex/hyperial/master/config.png)
### Restart windows terminal and check avaible shells: 
![IMAGE](https://raw.githubusercontent.com/Nimplex/hyperial/master/shells.png)

