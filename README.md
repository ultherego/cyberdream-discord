# Cyberdream for Discord

A [BetterDiscord](https://betterdiscord.app/) theme using the
[cyberdream](https://github.com/scottmckendry/cyberdream.nvim) palette.

## Install

1. Download [`cyberdream.theme.css`](cyberdream.theme.css).
2. Put it in your BetterDiscord themes folder
   (`~/.config/BetterDiscord/themes/` on Linux, or *Settings → Themes → Open Themes Folder*).
3. Enable **Cyberdream** in *Settings → Themes*.

Alternatively, paste this single line into *Settings → Custom CSS*:

```css
@import url('https://ultherego.github.io/cyberdream-discord/cyberdream.css');
```

The theme file only imports the hosted stylesheet, so updates arrive on their
own after a Discord reload (`Ctrl+R`).

## Customise

Every colour comes from a `--cd-*` variable. Override them in the `:root`
block of `cyberdream.theme.css`, below the `@import`:

```css
:root {
    --cd-accent: var(--cd-magenta);
    --cd-notification: var(--cd-pink);
}
```

| Variable | Default | Used for |
| --- | --- | --- |
| `--cd-accent` | cyan | buttons, switches, selected states |
| `--cd-link` | blue | links |
| `--cd-mention` | cyan | mentions and mentioned messages |
| `--cd-notification` | red | unread and mention badges |
| `--cd-online` / `--cd-idle` / `--cd-dnd` / `--cd-streaming` / `--cd-offline` | green / yellow / red / purple / grey | status indicators |

The palette itself (`--cd-bg`, `--cd-cyan`, …) is listed at the top of
[`cyberdream.css`](cyberdream.css).

## Development

Work on `cyberdream.css` directly: copy it into the themes folder as
`cyberdream-dev.theme.css` with a `@name` header on top, and BetterDiscord
reloads it on every save. The hosted copy is served by GitHub Pages from the
`main` branch.
