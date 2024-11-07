# glazewm-config
![输入图片说明](image.png)

# dependcy(need to add this tool Execution file path to `Path` env)
- [autohotkey-v1](https://www.autohotkey.com/)
- [tacky-borders](https://github.com/lukeyou05/tacky-borders)
- [AltSnap](https://github.com/alex-ds13/AltSnap)
- [flameshot](https://github.com/flameshot-org/flameshot)
- [wt](https://github.com/microsoft/terminal)
- [nushell](https://github.com/nushell/nushell)

# some file explain
- scripts/bind.ahk
  some mouse action bind and disable Lwin key open system menu
- autohidecursor.ahk
  auto hide cursor when you typing
- hotarea.ahk
  when you mouse enter top left corner, it will toggle taskview
- shellexec.exe(Administrator permissions required)
  a Execute files that allow you to execute commands without popping up the terminal.source code:[shellexec](https://gitee.com/DreamMaoMao/win-shellexec)

# install
```powershell
git clone https://gitee.com/DreamMaoMao/glazewm-config.git $env:HOMEPATH\.glzr
```

# modify zebar

- 1.you need to install `bun`
```
scoop install bun
```

- 2.after you change something in zebar, you need to rebuild
```
cd $env:HOMEPATH\.glzr\zebar\mybar
bun install
bun run build
```

- 3.restart or reload your zebar