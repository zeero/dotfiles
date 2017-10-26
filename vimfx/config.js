/*
 * General
 */
// Imports {{{1
const {classes: Cc, interfaces: Ci, utils: Cu} = Components;
const gClipboardHelper = Components.classes["@mozilla.org/widget/clipboardhelper;1"].getService(Components.interfaces.nsIClipboardHelper);
const {Preferences} = Cu.import('resource://gre/modules/Preferences.jsm', {});
const {commands} = vimfx.modes.normal;

Cu.import('resource://gre/modules/XPCOMUtils.jsm')
XPCOMUtils.defineLazyModuleGetter(this, 'AddonManager', 'resource://gre/modules/AddonManager.jsm')
XPCOMUtils.defineLazyModuleGetter(this, 'NetUtil', 'resource://gre/modules/NetUtil.jsm')
XPCOMUtils.defineLazyModuleGetter(this, 'PlacesUtils', 'resource://gre/modules/PlacesUtils.jsm')
XPCOMUtils.defineLazyModuleGetter(this, 'PopupNotifications', 'resource://gre/modules/PopupNotifications.jsm')
XPCOMUtils.defineLazyModuleGetter(this, 'Preferences', 'resource://gre/modules/Preferences.jsm')

const nsIEnvironment = Cc["@mozilla.org/process/environment;1"].getService(Ci.nsIEnvironment)
const nsIStyleSheetService = Cc['@mozilla.org/content/style-sheet-service;1'].getService(Ci.nsIStyleSheetService)
const nsIWindowWatcher = Cc["@mozilla.org/embedcomp/window-watcher;1"].getService(Ci.nsIWindowWatcher)
const nsIXULRuntime = Cc['@mozilla.org/xre/app-info;1'].getService(Ci.nsIXULRuntime)
const {OS} = Cu.import('resource://gre/modules/osfile.jsm')

// Hint {{{1
vimfx.set('hints.chars', 'gfdsavcxzrew');

// Bookmarks {{{1
let bkmks = [
  {keyword: 'map', title:'Google マップ検索', url: 'https://www.google.co.jp/maps/?hl=ja&q=%s'},
  {keyword: 'image', title:'Google イメージ検索', url: 'https://www.google.co.jp/search?tbm=isch&q=%s'},
  {keyword: 'icon', title:'Google アイコン検索', url: 'https://www.google.co.jp/search?as_st=y&tbm=isch&hl=ja&as_q=%s&safe=images&tbs=isz:i'},
  {keyword: 'trend', title:'Google トレンド検索（キーワードはカンマ区切り）', url: 'https://www.google.co.jp/trends/explore?q=%s'},
  {keyword: 'eiwa', title:'Google 英和翻訳', url: 'https://translate.google.com/#en/ja/%s'},
  {keyword: 'waei', title:'Google 和英翻訳', url: 'https://translate.google.com/#ja/en/%s'},
  {keyword: 'github', title:'Github 検索', url: 'https://github.com/search?utf8=%E2%9C%93&o=desc&s=stars&q=%s'},
  {keyword: 'gem', title:'RubyGems 検索', url: 'https://rubygems.org/search?utf8=%E2%9C%93&query=%s'},
  {keyword: 'npm', title:'npm 検索', url: 'https://www.npmjs.com/search?q=%s'},
  {keyword: 'photo', title:'写真素材検索', url: 'https://pixabay.com/ja/photos/?q=%s&image_type=&cat=&min_width=&min_height='},
  {keyword: 'gist', title:'Zeero\'s Gists', url: 'https://gist.github.com/zeero'},
  {keyword: 'gmail', title:'Gmail', url: 'https://mail.google.com/mail/u/0/#inbox'},
  {keyword: 'pocket', title:'Pocket', url: "javascript:(function(){var%20e=function(t,n,r,i,s){var%20o=[4851916,1453441,4046402,5597234,1296964,5672614,4931143,1150445,5800939,3166362];var%20i=i||0,u=0,n=n||[],r=r||0,s=s||0;var%20a={'a':97,'b':98,'c':99,'d':100,'e':101,'f':102,'g':103,'h':104,'i':105,'j':106,'k':107,'l':108,'m':109,'n':110,'o':111,'p':112,'q':113,'r':114,'s':115,'t':116,'u':117,'v':118,'w':119,'x':120,'y':121,'z':122,'A':65,'B':66,'C':67,'D':68,'E':69,'F':70,'G':71,'H':72,'I':73,'J':74,'K':75,'L':76,'M':77,'N':78,'O':79,'P':80,'Q':81,'R':82,'S':83,'T':84,'U':85,'V':86,'W':87,'X':88,'Y':89,'Z':90,'0':48,'1':49,'2':50,'3':51,'4':52,'5':53,'6':54,'7':55,'8':56,'9':57,'\/':47,':':58,'?':63,'=':61,'-':45,'_':95,'&':38,'$':36,'!':33,'.':46};if(!s||s==0){t=o[0]+t}for(var%20f=0;f<t.length;f++){var%20l=function(e,t){return%20a[e[t]]?a[e[t]]:e.charCodeAt(t)}(t,f);if(!l*1)l=3;var%20c=l*(o[i]+l*o[u%o.length]);n[r]=(n[r]?n[r]+c:c)+s+u;var%20p=c%(50*1);if(n[p]){var%20d=n[r];n[r]=n[p];n[p]=d}u+=c;r=r==50?0:r+1;i=i==o.length-1?0:i+1}if(s==282){var%20v='';for(var%20f=0;f<n.length;f++){v+=String.fromCharCode(n[f]%(25*1)+97)}o=function(){};return%20v+'ce0a80a2f6'}else{return%20e(u+'',n,r,i,s+1)}};var%20t=document,n=t.location.href,r=t.title;var%20i=e(n);var%20s=t.createElement('script');s.type='text/javascript';s.src='https://getpocket.com/b/r4.js?h='+i+'&u='+encodeURIComponent(n)+'&t='+encodeURIComponent(r);e=i=function(){};var%20o=t.getElementsByTagName('head')[0]||t.documentElement;o.appendChild(s)})()"},
];
let bookmarks = PlacesUtils.bookmarks;
bkmks.forEach((element) => {
  let uri = NetUtil.newURI(element.url, null, null);
  if (!bookmarks.isBookmarked(uri)) {
    bookmarks.insertBookmark(
      bookmarks.unfiledBookmarksFolder,
      uri,
      bookmarks.DEFAULT_INDEX,
      element.title);
    PlacesUtils.keywords.insert(element);
  }
});

// about:config {{{1
// VimFx設定ファイルディレクトリ
Preferences.set({'extensions.VimFx.config_file_directory': '~/.vimfx'});
// about:config警告非表示
Preferences.set({'general.warnOnAboutConfig': false});
// 開始時にセッション復元
Preferences.set({'browser.startup.page': 3});
// e10s有効
Preferences.set({'browser.tabs.remote.force-enable': true});
Preferences.set({'extensions.e10sBlockedByAddons': false});
Preferences.set({'extensions.e10sBlocksEnabling': false});
Preferences.set({'dom.ipc.processCount': 4});
// MacType有効
Preferences.set({'gfx.direct2d.disabled': true});
Preferences.set({'gfx.content.azure.backends': 'direct2d1.1,cairo'});
// 補完候補の数
Preferences.set({'browser.urlbar.maxRichResults': 20});
// キャッシュ無効
Preferences.set({'browser.cache.disk.capacity': 0});
// アンドゥ履歴
Preferences.set({'browser.sessionstore.max_tabs_undo': 20});
// 複数タブをクローズ
Preferences.set({'browser.tabs.warnOnClose': false});
// 日本語
Preferences.set({'intl.locale.matchOS': false});
Preferences.set({'general.useragent.locale': 'ja'});

//1}}}

/*
 * Mappings
 */
// mapコマンド定義 {{{1
let map = (command, shortcuts, custom=false) => {
    vimfx.set(`${custom ? 'custom.' : ''}mode.normal.${command}`, shortcuts);
}

// 移動 {{{1
map('history_back',          'h');
map('history_forward',       'l');
map('tab_select_previous',   'H');
map('tab_select_next',       'L');
map('scroll_right',          'zh');
map('scroll_left',           'zl');
map('scroll_half_page_down', '<space>');
map('scroll_half_page_up',   '<s-space>');
map('scroll_page_down',      '<c-f>');
map('scroll_page_up',        '<c-b>');

// タブ {{{1
map('tab_close',             'd q');
map('tab_restore',           'u');
map('tab_restore_list',      'U');
map('tab_new',               't');
map('tab_move_forward',      ',l');
map('tab_move_backward',     ',L');

// ヒント {{{1
map('follow_in_tab',         '');
map('follow_in_focused_tab', 'F');

// その他 {{{1
map('copy_current_url',      'yy');

//1}}}

/*
 * Exclude Sites
 */
// gmail {{{1
vimfx.addKeyOverrides(
  [ (location, mode) => location.hostname === 'mail.google.com',
    ['j', 'k', 'o', 'n', 'p']
  ]
);

//1}}}

/*
 * Custom Commands
 */
// copy_plain {{{1
vimfx.addCommand({
  name: 'copy_plain',
  description: 'URLとタイトルをコピー',
  category: 'location',
}, ({vim}) => {
  let url = vim.window.gBrowser.selectedBrowser.currentURI.spec;
  let title = vim.window.gBrowser.selectedBrowser.contentTitle;
  let fmt = title+"\n"+url;
  gClipboardHelper.copyString(fmt);
  vim.notify("Copied String: "+ fmt);
});
map('copy_plain', 'gy', true);

// copy_markdown {{{1
vimfx.addCommand({
  name: 'copy_markdown',
  description: 'Markdown形式でURLコピー',
  category: 'location',
}, ({vim}) => {
  let url = vim.window.gBrowser.selectedBrowser.currentURI.spec;
  let title = vim.window.gBrowser.selectedBrowser.contentTitle;
  let fmt = "["+title+"]("+url+")";
  gClipboardHelper.copyString(fmt);
  vim.notify("Copied String: "+ fmt);
});
map('copy_markdown', 'gY', true);

// tab_groups {{{1
vimfx.addCommand({
    name: 'tab_groups',
    description: 'タブグループを開く',
    category: 'tabs',
}, ({vim}) => {
    vim.window.tabGroups.TabView.toggle();
});
map('tab_groups', 'gt', true);

// increment & decrement {{{1
vimfx.addCommand({
  name: 'go_increment',
  description: 'URLの最後の数字をインクリメント',
  category: 'location',
  order: commands.go_to_root.order + 1,
}, ({vim, count = 1}) => {
  let url = vim.browser.currentURI.spec;
  let newUrl = url.replace(/(\d+)(?=\D*$)/, match =>
    Math.max(0, Number(match) + count)
  );
  if (newUrl === url) {
    vim.notify('Cannot increment/decrement URL');
  } else {
    vim.window.gBrowser.loadURI(newUrl);
  }
});
vimfx.addCommand({
  name: 'go_decrement',
  description: 'URLの最後の数字をデクリメント',
  category: 'location',
  order: commands.go_increment.order + 1,
}, ({vim, count = 1}) => {
  commands.go_increment.run({vim, count: -count});
});
map('go_increment', '<c-a>', true);
map('go_decrement', '<c-x>', true);

// web_console {{{1
vimfx.addCommand({
  name: 'web_console',
  description: 'Webコンソール',
}, ({vim}) => {
  // vim.window.gDevToolsBrowser.selectToolCommand(vim.window.gBrowser, 'webconsole');
  vim.window.gDevToolsBrowser.toggleToolboxCommand(vim.window.gBrowser);
});
map('web_console', ',.', true);

//1}}}

