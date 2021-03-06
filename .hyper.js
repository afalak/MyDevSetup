module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 11,
    fontFamily: 'Hack,"DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    cursorColor: 'rgba(244,244,244,1)',
    cursorAccentColor: '#444',
    cursorShape: 'BLOCK',
    cursorBlink: true,
    selectionColor: 'rgba(248,248,2,0.5)',
    foregroundColor: '#fff',
    backgroundColor: '#222',
    borderColor: '#789',
    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '1px 1px 1px 7px',
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },
    shell: 'D:\\Users\\307009812\\1_falak\\003_Apps\\PortableGit64\\bin\\bash.exe',
    shellArgs: ['--login'],
    env: { TERM: 'cygwin' },
    bell: 'true',
    copyOnSelect: true,
    defaultSSHApp: true,
    windowSize: [500,500],
    scrollback: 9999,
    hyperStatusLine: {
      dirtyColor: 'salmon',
      aheadColor: 'ivory',
      footerTransparent: false
    },
    hyperBorder: {
      borderColors: ['random','random'],
      borderWidth: '2px',
      animate: false
    },
  },
  plugins: [
    `hyper-broadcast`,
    `space-pull`,
    `gitrocket`,
    `hyper-statusline`,
    `hyperborder-elevated`
  ],
  localPlugins: [
  ],
  keymaps: {
  },
};
