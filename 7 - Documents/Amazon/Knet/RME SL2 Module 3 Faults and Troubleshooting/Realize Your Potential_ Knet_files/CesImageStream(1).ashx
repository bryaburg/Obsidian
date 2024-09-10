/* DynamicMainMenu.css */
.mainMenu {
	overflow:auto;
	cursor:pointer;
	background-image:url(/images/tabs/TabMainBackground.jpg);
	height:41px;
}
.mainMenuRight {
	background-image:url(/images/tabs/TabMainBackground_Right.jpg);
	background-position:top right;
	background-repeat:no-repeat;
	height:41px;
}
.tabAdjustSubNavText {
	padding-top:3px;
}
.mainMenuLeft {
	background-image:url(/images/tabs/TabMainBackground_Left.jpg);
	background-repeat:no-repeat;
	height:41px;
}
/* Sub Nav */
.mainMenuSubNav {
	clear:both;
	background-color:#232F3E;
	color:White;
	padding:0 15px;
}
.mainMenuSubNav a {
	color:White;
	font-size:10px;
	font-family:verdana;
	text-decoration:none;
	letter-spacing:0.1em;
    font-weight:bold;
}
.mainMenuSubNavLink:hover {
	text-decoration:underline;
}
.mmNavLeftActive {
	background-image:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fRightPanel%2fButtonBackLeft.gif&browser=SF);
	background-position:left;
	background-repeat:no-repeat;
	color:White;
	height:41px;
}
.mmNavSingle {
	float:left;
	height:41px;
	line-height:23px;
}
.mmNavSingle label {
	font-size:12px;
	font-family:Arial;
	font-weight:bold;
	color:#232F3E;
}
.mmNavRight {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2ftabs%2fTopNavRight.png&browser=SF) no-repeat left top;
	width:15px;
	height:26px;
}
/* Active Tab BEGIN */
.mmNavLeft_Active {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fTabs%2fTabActiveBackground_Left.png&browser=SF) no-repeat left top;
	height:26px;
	color:White;
}
.mmNavLeft_Active label {
	color:White;
}
.mmNavRight_Active {
	float:left;
	color:White;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fRightPanel%2fTopNavRight-selected.png&browser=SF) no-repeat left top;
	width:15px;
	height:26px;
}
.mmNavRight_Active label {
	color:White;
}
.mmNavMid_Active {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2ftabs%2fTabActiveBackground.png&browser=SF);
	height:26px;
	line-height:23px;
}
.mmNavMid_Active label {
	font-size:12px;
	font-family:Arial;
	font-weight:bold;
	color:White;
}
/* Active Tab END */
/* Rollover Tab BEGIN */
.mmNavLeft_RollOver {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2ftabs%2fTabRollOverBackground_Left.png&browser=SF);
	height:26px;
}
.mmNavLeft_RollOver label {
	color:White;
}
.mmNavMid_RollOver {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2ftabs%2fTabRollOverBackground.png&browser=SF);
	height:26px;
	line-height:23px;
}
.mmNavMid_RollOver label {
	color:White;
}
.mmNavRight_RollOver {
	float:left;
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2ftabs%2fTabRollOverBackground.png&browser=SF) no-repeat left top;
	width:15px;
	height:26px;
}
.mmNavRight_RollOver label {
	color:White;
}
.mainMenuSubNavArrow {
	
}
.mainMenuSubNavArrowCell {
}
/* Rollover Tab END */
/* END DynamicMainMenu.css */
/* ----------------------------------------------------------------------------
 * Panel styles
 * ----------------------------------------------------------------------------
 */
.tableRow {
	background-color:#efefef;
}
.tableRow:hover {
	background-color:#e2e2e2;
}
.rightPanelText:hover {
	text-decoration:underline;
	cursor:pointer;
}
.TextBox {
	font-size:10px;
	font-family:Verdana;
}
.grayHeaderText {
	font-weight:bold;
	font-size:10pt;
	font-family:Arial;
	color:#545555;
}
.verticalGraySeperator {
	border-left-color:#cccccc;
	border-left-style:solid;
	border-left-width:1px;
}
.verticalGrayBottomBorderTD {
	border-bottom-color:#cccccc;
	border-bottom-style:dashed;
	border-bottom-width:1px;
}
.verticalGrayBottomBorder TD {
	border-bottom-color:#cccccc;
	border-bottom-style:dashed;
	border-bottom-width:1px;
}
.navBarPipe {
	color:#232F3E;
}
/* Blurb Dialog */
.DlgBlurb_titleBar {
	width:100%;
}
.DlgBlurb_titleBar td {
	border:none;
	background-color:transparent !important;
}
.DlgBlurb_titleBarLeft {
	background:transparent url(/images/dialog/blurb/title.png) no-repeat left top;
	width:18px;
}
.DlgBlurb_titleBarMiddle {
	background:transparent url(/images/dialog/blurb/title.png) repeat-x left bottom;
	height:18px;
}
.DlgBlurb_titleBarRight {
	background:transparent url(/images/dialog/blurb/title.png) no-repeat right top;
	width:18px;
}
.DlgBlurb_contentTable {
	table-layout:fixed;
	width:100%;
}
.DlgBlurb_contentTable td {
	border:none;
}
.DlgBlurb_contentTable_content {
	background-color:#ffffff;
	padding-left:10px;
	padding-right:10px;
}
.DlgBlurb_contentTable_b {
	background:url(/images/dialog/blurb/BlurbPopupBottom.png);
	background-position:left bottom;
	height:1px;
	height:42px;
}
.DlgBlurb_contentTable_content_l {
	background:transparent url(/images/dialog/blurb/border-v.png) repeat-y left top;
	width:14px;
}
.DlgBlurb_contentTable_content_r {
	background:transparent url(/images/dialog/blurb/border-v.png) repeat-y right top;
	width:32px;
}
.DlgBlurb_contentTable_lb {
	background:transparent url(/images/dialog/blurb/border-h.png) no-repeat left top;
	width:14px;
}
.DlgBlurb_contentTable_b {
	background:transparent url(/images/dialog/blurb/border-h.png) repeat-x left -36px;
	height:24px;
}
.DlgBlurb_contentTable_rb {
	background:transparent url(/images/dialog/blurb/border-h.png) no-repeat right top;
	height:36px;
}
/* Blurb Dialog - RTL */
#dir-rtl .DlgBlurb_titleBarLeft {
	background:transparent url(/images/dialog/blurb/title.png) no-repeat right top;
}
#dir-rtl .DlgBlurb_titleBarMiddle {
	background:transparent url(/images/dialog/blurb/title.png) repeat-x right bottom;
	height:18px;
}
#dir-rtl .DlgBlurb_titleBarRight {
	background:transparent url(/images/dialog/blurb/title.png) no-repeat left top;
}
#dir-rtl .DlgBlurb_contentTable_content_l {
	background:transparent url(/images/dialog/blurb/border-v.png) repeat-y right top;
	width:32px;
}
#dir-rtl .DlgBlurb_contentTable_content_r {
	background:transparent url(/images/dialog/blurb/border-v.png) repeat-y left top;
	width:14px;
}
#dir-rtl .DlgBlurb_contentTable_lb {
	background:transparent url(/images/dialog/blurb/border-h.png) no-repeat right top;
	width:14px;
}
#dir-rtl .DlgBlurb_contentTable_b {
	background:transparent url(/images/dialog/blurb/border-h.png) repeat-x right -36px;
	height:24px;
}
#dir-rtl .DlgBlurb_contentTable_rb {
	background:transparent url(/images/dialog/blurb/border-h.png) no-repeat left top;
	height:36px;
}
/* LBlurb Dialog */
.DlgBlurbL_titleBar, 
.DlgBlurbL_title {
	width:100%;
}
.DlgBlurbL_titleBar td, 
.DlgBlurbL_title td {
	border:none;
}
.DlgBlurbL_titleBarLeft, 
.DlgBlurbL_titleLeft {
	background:transparent url(/images/dialog/blurbl/x1.png) no-repeat left top;
	width:43px;
	height:35px;
}
.DlgBlurbL_titleBarMiddle, 
.DlgBlurbL_titleMiddle {
	background:transparent url(/images/dialog/blurbl/x2.png) repeat-x left top;
	height:35px;
	vertical-align:bottom;
}
.DlgBlurbL_titleBarRight, 
.DlgBlurbL_titleRight {
	background:transparent url(/images/dialog/blurbl/x3.png) no-repeat right top;
	width:20px;
	height:35px;
}
.DlgBlurbL_contentTable, 
.DlgBlurbL_content {
	table-layout:fixed;
	width:100%;
}
.DlgBlurbL_contentTable td, 
.DlgBlurbL_content td {
	border:none;
}
.DlgBlurbL_contentTable_content, 
.DlgBlurbL_contentMiddle {
	background-color:#ffffff;
}
.DlgBlurbL_contentTable_content_l, 
.DlgBlurbL_contentLeft {
	background:transparent url(/images/dialog/blurbl/x7.png) repeat-y left top;
	width:43px;
}
.DlgBlurbL_contentTable_content_r, 
.DlgBlurbL_contentRight {
	background:transparent url(/images/dialog/blurbl/x4.png) repeat-y right top;
	width:20px;
}
.DlgBlurbL_contentTable_lb, 
.DlgBlurbL_footerLeft {
	background:transparent url(/images/dialog/blurbl/x6.png) no-repeat bottom;
	height:20px;
	width:43px;
}
.DlgBlurbL_contentTable_b, 
.DlgBlurbL_footerMiddle {
	background:transparent url(/images/dialog/blurbl/x55.png) repeat-x left bottom;
	height:20px;
}
.DlgBlurbL_footer {
	width:100%;
	font-size:1px;
}
.DlgBlurbL_contentTable_rb, 
.DlgBlurbL_footerRight {
	background:transparent url(/images/dialog/blurbl/x5.png) no-repeat right bottom;
	height:20px;
	width:20px;
}
/* RTL - Blurb Dialog */
#dir-rtl .DlgBlurbL_titleBarLeft, 
#dir-rtl .DlgBlurbL_titleLeft {
	background:transparent url(/images/dialog/blurbl/x1-rtl.png) no-repeat right top;
}
#dir-rtl .DlgBlurbL_titleBarMiddle, 
#dir-rtl .DlgBlurbL_titleMiddle {
	background:transparent url(/images/dialog/blurbl/x2-rtl.png) repeat-x right top;
}
#dir-rtl .DlgBlurbL_titleBarRight, 
#dir-rtl .DlgBlurbL_titleRight {
	background:transparent url(/images/dialog/blurbl/x3-rtl.png) no-repeat left top;
}
#dir-rtl .DlgBlurbL_contentTable_content_l, 
#dir-rtl .DlgBlurbL_contentLeft {
	background:transparent url(/images/dialog/blurbl/x7-rtl.png) repeat-y right top;
}
#dir-rtl .DlgBlurbL_contentTable_content_r, 
#dir-rtl .DlgBlurbL_contentRight {
	background:transparent url(/images/dialog/blurbl/x4-rtl.png) repeat-y left top;
}
#dir-rtl .DlgBlurbL_contentTable_lb, 
#dir-rtl .DlgBlurbL_footerLeft {
	background:transparent url(/images/dialog/blurbl/x6-rtl.png) no-repeat bottom;
}
#dir-rtl .DlgBlurbL_contentTable_b, 
#dir-rtl .DlgBlurbL_footerMiddle {
	background:transparent url(/images/dialog/blurbl/x55-rtl.png) repeat-x right bottom;
}
#dir-rtl .DlgBlurbL_contentTable_rb, 
#dir-rtl .DlgBlurbL_footerRight {
	background:transparent url(/images/dialog/blurbl/x5-rtl.png) no-repeat left bottom;
}
/* ----------------------------------------------------------------------------
 * Dialog styles
 * ----------------------------------------------------------------------------
 */
body.is-dialog-open{
    overflow:hidden;
}
.CsDialog {
	width:400px;
	z-index:999;
	/* IE6 won't do min-width.  We need to apply IE6 hack */
	/* width:400px;
		width:expression(document.body.clientWidth < 304 ? '300px' :'auto');
	*/
}
.CsDialog_titleBar {
	width:100%;
	font-weight:bold;
	vertical-align:bottom; /* Fixes IE bug */
}
.CsDialog_titleBar td {
	padding:0px;
	margin:0px;
}
.CsDialog_titleBarLeft {
	width:8px;
	background:url(/images/dialog/title-cool.gif) no-repeat left top;
}
#dir-rtl .CsDialog_titleBarLeft {
	background-position:right top;
}
.CsDialog_titleBarText {
	height:25px;
	font-family:Verdana;
	font-weight:bold;
	color:#222222;
	font-size:12px;
	text-align:left;
	padding-left:4px;
	background:url(/images/dialog/title-cool.gif) repeat-x left bottom;
	line-height:22px;
	vertical-align:bottom;
}
#dir-rtl .CsDialog_titleBarText {
	text-align:right;
}
.CsDialog_titleBarRight {
	width:12px;
	background:url(/images/dialog/title-cool.gif) no-repeat right top;
}
#dir-rtl .CsDialog_titleBarRight {
	background-position:left top;
}
.CsDialog_titleBarRight #CsDlgClose,
.CsDialog_titleBarRight .CsDlgClose /*img*/ {
	border:none;
	background:url(/images/dialog/title-buttons.gif) no-repeat left top;
	width:11px;
	height:10px;
	display:block;
}
.CsDialog_titleBarRight #CsDlgClose, 
.CsDialog_titleBarRight .CsDlgClose {
	position:relative;
	right:12px;
	top:0px;
	border:solid 0px blue;
}
#dir-rtl .CsDialog_titleBarRight #CsDlgClose,
#dir-rtl .CsDialog_titleBarRight .CsDlgClose {
	right:-12px;
}
.CsDialog_titleBarRight #CsDlgClose:hover,
.CsDialog_titleBarRight .CsDlgClose:hover {
	background-position:left -11px;
}
.CsDialog_titleBarRight #CsDlgClose:active,
.CsDialog_titleBarRight .CsDlgClose:active {
	background-position:left -28px;
}
/* ----------------------------------------------------------------------------
 */
.graySubText {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#545555;
}
.graySubTextNormal {
	font-weight:normal;
	font-size:9pt;
	font-family:Arial;
	color:#545555;
}
.colorMainText {
	font-size:9pt;
	font-family:Arial;
	color:#232F3E;
}
.colorMainTitle {
	font-weight:bold;
	font-size:10pt;
	font-family:Arial;
	color:#232F3E;
}
.colorMainTitleLink {
	font-weight:bold;
	font-size:10pt;
	font-family:Arial;
	color:#232F3E;
	text-decoration:none;
}
.colorMainTitleLink:hover {
	text-decoration:underline;
}
.colorMainTitleLink.disabled {
	cursor:default;
	color:#777777;
	text-decoration:none;
}
h2 {
	font-family:Arial;
	font-size:10pt;
	font-weight:bold;
}
.Panel_titleMiddle h2 {
	font-size:10pt !important;
}
/* ----------------------------------------------------------------------------
 * Hyperlink styles
 * ----------------------------------------------------------------------------
 */
.colorLink {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#232F3E;
	text-decoration:none;
	cursor:pointer;
}
.colorLinkDisabled {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	cursor:default;
	color:#777777;
	text-decoration:none;
}
.colorLink:hover {
	text-decoration:underline;
}
.colorLink img {
	border:0;
	vertical-align:middle;
	text-decoration:none !important;
}
.imageLink {
	margin-left:15px;
}
.imageLink img {
	margin-left:-15px;
}
#dir-rtl .imageLink img {
	margin-left:0 !important;
}
/* ----------------------------------------------------------------------------
 * Panel styles
 * ----------------------------------------------------------------------------
 */
.rightPanelText:hover {
	text-decoration:underline;
	cursor:pointer;
}
.BottomIconDocking {
}
.BottomIconDocking #contentTable {
	width:100% !important;
	table-layout:fixed !important;
}
.BottomIconDocking #contentTable #content {
	background:url(/images/MyTeam/BottomIconDocking/HtmlDockingBottomContent.png) no-repeat left top !important;
	height:20px !important;
	font-size:12px !important;
	font-weight:bold !important;
	color:#555 !important;
	letter-spacing:0.1em !important;
}
.BottomIconDocking #contentTable #l {
	background:url(/images/MyTeam/BottomIconDocking/full.png) no-repeat left top !important;
	width:8px;
}
.BottomIconDocking #contentTable #r {
	background:url(/images/MyTeam/BottomIconDocking/full.png) no-repeat right top !important;
	width:8px;
}
.BottomIconDocking a {
	padding-left:5px;
}
/* ----------------------------------------------------------------------------
 * Calendar Styles
 * ---------------------------------------------------------------------------- 
 */
.Calendar {
	font-family:Arial;
	font-size:12pt;
	width:100%;
}
.CalendarHeader {
	width:100%;
	color:#000;
	font-family:Arial;
	font-size:12pt;
	font-weight:bold;
	height:28px;
	margin-bottom:6px;
}
.CalendarHeader span {
	display:block;
	font-weight:bold;
	color:Black;
	text-align:center;
}
.CalendarHeader input {
	border:1px solid #a4bbc6;
	color:#fff;
	padding:0px 2px;
	margin-right:2px;
}
.Calendar .dayHeader {
	text-align:center;
	text-decoration:none;
	font-weight:bold;
	font-size:8pt;
	background-color:#436F9A;
	background:#436F9A url(/images/MyTeam/CalendarHeader.png) repeat-x;
	color:#fff;
	border:1px solid #aaa;
}
.Calendar .inactiveDay {
	text-align:right;
	text-decoration:none;
	font-weight:bold;
	font-size:8pt;
	background-color:#c0c0c0;
	border:1px solid #aaa;
	color:Gray;
}
.Calendar .day {
	text-align:right;
	text-decoration:none;
	font-weight:bold;
	font-size:8pt;
	background-color:#436F9A;
	border:1px solid #aaa;
	color:White;
}
.Calendar .day a {
	display:block;
	text-decoration:none;
	padding:1px 3px;
}
.Calendar .day.selected {
	background-color:color;
}
.Calendar .day.today {
	background-color:#D1E7F4;
	color:black;
}
.Calendar .today .dayCell {
	background-color:#D1E7F4;
}
.Calendar .dayCell {
	background-color:White;
	min-height:4em;
	height:4em;
	font-family:Arial;
	font-size:8pt;
	font-weight:bold;
	padding:2px;
	text-align:left;
}
.Calendar .dayCell div {
	font-family:Arial;
	font-size:8pt;
	font-weight:bold;
	padding:2px;
	text-align:center;
	color:Black;
	white-space:nowrap;
}
.Calendar .day.selected .dayCell {
	background-color:#232F3E;
	color:Black;
}
/**************************NEW STYLES****************************/
/*These are all in the company colors */
H1, .PageHeader {
}
H2, .PanelHeader {
}
H3, .SectionHeader1 {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#5F5F5F;
}
H4, .SectionHeader2 {
	font-weight:bold;
	font-size:10pt;
	font-family:Arial;
	color:#5F5F5F;
}
/*H5, .SectionHeader3
{
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#232F3E;
}
*/
.SectionHeader1Color {
	font-weight:bold;
	font-size:11pt;
	font-family:Arial;
	color:#232F3E;
}
.SectionHeader2Color {
	font-weight:bold;
	font-size:10pt;
	font-family:Arial;
	color:#232F3E;
}
.SectionHeader1Text {
	font-size:9pt;
	font-family:Arial;
	color:#5F5F5F;
}
.SectionHeader1TextColor {
	font-size:9pt;
	font-family:Arial;
	color:#232F3E;
}
.SectionHeaderWithIcon1 {
	font-weight:bold;
	font-size:13pt;
	font-family:Arial;
	color:Black;
}
/* The name of the field on the user side - gray */
.FieldName {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#545555;
}
.FieldNameBold {
	font-weight:bold;
	font-size:9pt;
	font-family:Arial;
	color:#545555;
}
.FieldName2 {
	font-weight:normal;
	font-size:9pt;
	font-family:Arial;
	color:#545555;
}
/* Same as bodytext */
.FieldValue {
	color:Black;
	font-size:9pt;
	font-family:Arial;
}
.FieldValueBold {
	color:Black;
	font-size:9pt;
	font-family:Arial;
	font-weight:bold;
}
/* Use it with Watermark Extender*/
.FieldValueWatermark {
	font-size:9pt;
	font-family:Arial;
	color:#555555;
}
.BodyHeader {
}
.BodyText {
}
/* default links */
hr {
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom:1px solid #D5D5D5;
}
hr.solidLine {
	border-bottom:1px solid #456789;
}
/*user styles */
.idcardHeader {
}
.idcardText {
}
.CsList {
	width:100%;
	text-align:left;
}
#dir-rtl .CsList {
	width:100%;
	text-align:right;
}
.CsList td {
	padding:6px 4px;
	font-size:9pt;
	font-family:Arial;
	border:none;
}
.CsList td table td {
	padding:1px;
}
.CsList tbody tr:hover td {
	background-color:#e5e5e5;
}
.CsList tr:hover td table td {
	background-color:#e5e5e5;
}
table.NoHover tr:hover td {
	background-color:#ffffff !important;
}
.CsList th,
.CsList_th {
	padding:3px;
	height:26px;
	background-color:#e8e8e8;
	border-top:solid 1px #C0C0C0;
	border-bottom:solid 1px #C0C0C0;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#545555;
}
.CsList th a {
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#545555;
	text-decoration:none;
}
.CsList th .columnHeaderLink {
	color:#545555;
}
.CsList th a:hover {
	text-decoration:underline;
}
.tablerolloverNewUI {
	background-color:#e5e5e5;
}
/* CsList With Lines */
.CsListWithLines {
	width:100%;
	border-collapse:collapse;
	text-align:left;
}
#dir-rtl .CsListWithLines {
	text-align:right;
}
.CsListContainer {
	border-bottom:1px solid #dddddd;
}
.CsListContainer:hover {
	background-color:#e5e5e5;
}
.CsListWithLines td {
	border-bottom:1px solid #dddddd;
	padding:6px 4px;
	font-size:9pt;
	font-family:Arial;
}
.CsListWithLines td table td {
	border-bottom:0px;
	padding:1px;
}
.CsListWithLines tr:hover td table td {
	border-bottom:0px;
}
.CsListWithLines th {
	padding:3px;
	height:26px;
	background-color:#e8e8e8;
	border-top:solid 1px #C0C0C0;
	border-bottom:solid 1px #C0C0C0;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#545555;
}
#dir-rtl th[align=left] {
	text-align:right !important;
}
#dir-rtl td[align=right] {
	text-align:left;
}
.CsListWithLines th .columnHeaderLink {
	color:#545555;
}
.CsListWithLines tbody tr:hover {
	background-color:#e5e5e5;
}
.CsListWithLines tr:hover td {
	border-bottom:1px solid #dddddd;
}
.CsList tr.CsListHeader:hover th {
	background-color:#FFFFFF;
	border-bottom:1px solid #777777;
}
.CsListWithLines tr.highlighted {
    background: #FCF8E3;
}
/*CsList_Simple BEGIN*/
.CsList_Simple td {
	border-bottom:0px solid #dddddd;
	padding:4px 2px;
	font-size:8.5pt;
	font-family:arial;
}
.CsList_Simple th {
	border-bottom:1px solid #777777;
	color:Black;
	padding:3px 0px;
}
.CsList_Simple tbody tr:hover {
	background-color:white;
}
.CsList_Simple tr:hover td {
	border-bottom:0px solid #dddddd;
}
.CsList_Simple tbody tr:hover {
	background-color:white;
}
.ajax__calendar_container {
    font-family: Tahoma, Verdana, Helvetica !important;
    line-height: 14px !important;
}
.ajax__calendar_container table div {
	font-size:11px !important;
    font-weight: normal;
}
.ajax__calendar_container table td {
	padding:0px !important;
    height: auto !important;
}
.ajax__calendar_footer {
    font-weight: normal;
}
/*END*/
.lnk-under {
	text-decoration:none !important;
	font-weight:normal;
}
.lnk-under:hover {
	text-decoration:underline !important;
	font-weight:normal;
}
/* Table Alignment */
.tbl-std {
	text-align:left;
	width:100%;
	border-collapse:collapse;
	vertical-align:top;
}
.tbl-std th, .tbl-std td {
	text-align:left;
}
th.tbl-std-rt, td.tbl-std-rt {
	text-align:right;
}
.tbl-std td.col-1, 
.tbl-std td.col-2, 
.tbl-std td.col-3, 
.tbl-std td.col-4, 
.tbl-std td.col-5, 
.tbl-std td.col-6, 
.tbl-std td.col-7, 
.tbl-std td.col-8, 
.tbl-std td.col-9, 
.tbl-std td.col-10 {
	vertical-align:top;
}
.tbl-std th span.link a {
	color:#232F3E !important;
}
.cso-tbl-std.cso-tbl-pad-sm td {
    padding: 2px;
}
.cso-tbl-std.cso-tbl-pad-md td {
    padding: 5px;
}
.cso-tbl-std.cso-tbl-pad-lg td {
    padding: 8px;
}
#dir-rtl .tbl-std, 
#dir-rtl .tbl-std th, 
#dir-rtl .tbl-std td {
	text-align:right;
}
#dir-rtl th.tbl-std-rt, #dir-rtl td.tbl-std-rt {
	text-align:left;
}
.iframeBody {
	margin:0px;
	background-color:transparent;
}
.CsGroupBox {
	line-height:20px;
	width:100%;
	table-layout:fixed;
}
.CsGroupBox_TopLeft {
	background:transparent url(/images/dialog/groupbox_title.png) no-repeat left top;
	width:6px;
}
.CsGroupBox_TopMiddle {
	background:transparent url(/images/dialog/groupbox_title.png) repeat-x left bottom;
}
.CsGroupBox_TopRight {
	background:transparent url(/images/dialog/groupbox_title.png) no-repeat right top;
	width:6px;
}
.CsGroupBox_Title {
	font-family:verdana;
	font-size:11px;
	font-weight:bold;
	padding:0px 4px;
}
.CsGroupBox_Left {
	background:transparent url(/images/dialog/groupbox_v.png) repeat-y left top;
	width:6px;
}
.CsGroupBox_Right {
	background:transparent url(/images/dialog/groupbox_v.png) repeat-y right top;
	width:6px;
}
.CsGroupBox_BottomLeft {
	background:transparent url(/images/dialog/groupbox_h.png) no-repeat left top;
	width:6px;
}
.CsGroupBox_BottomMiddle {
	background:transparent url(/images/dialog/groupbox_h.png) repeat-x left bottom;
}
.CsGroupBox_BottomRight {
	background:transparent url(/images/dialog/groupbox_h.png) no-repeat right top;
	width:6px;
}
.CsGroupBoxHeader {
	line-height:20px;
	width:100%;
	table-layout:fixed;
}
.CsGroupBoxHeader_TopLeft {
	background:transparent url(/images/dialog/groupbox_title.png) no-repeat left bottom;
	width:6px;
}
.CsGroupBoxHeader_TopMiddle {
	background:transparent url(/images/dialog/groupbox_title.png) repeat-x left bottom;
}
.CsGroupBoxHeader_TopRight {
	background:transparent url(/images/groupbox_title.png) no-repeat right bottom;
	width:6px;
}
.CsGroupBoxHeader_Title {
	font-family:verdana;
	font-size:11px;
	font-weight:bold;
	padding:0px 4px;
}
.CsGroupBoxHeader_Left {
	width:6px;
}
.CsGroupBoxHeader_Right {
	width:6px;
}
.CsGroupBoxHeader_BottomLeft {
	width:6px;
}
.CsGroupBoxHeader_BottomMiddle {
}
.CsGroupBoxHeader_BottomRight {
	width:6px;
}
/* Section Header for Compensation Pages*/
.CsSectionHeader {
	height:33px;
	line-height:33px;
	width:100%;
	table-layout:fixed;
	margin-top:.5em;
	margin-bottom:.5em;
	empty-cells:show;
	border-collapse:collapse;
}
.CsSectionHeader_Left {
	background:transparent url(/images/section_header_left.jpg) no-repeat left bottom;
	width:15px;
}
#dir-rtl .CsSectionHeader_Left {
	background:transparent url(/images/section_header_right.jpg) no-repeat right bottom;
	width:15px;
}
.CsSectionHeader_Middle {
	background:transparent url(/images/section_header_middle.jpg) repeat-x left bottom;
	white-space:nowrap;
	overflow:hidden;
	height:28px;
	line-height:28px;
	vertical-align:text-top;
}
.CsSectionHeader_Right {
	background:transparent url(/images/section_header_right.jpg) no-repeat right bottom;
	width:15px;
}
#dir-rtl .CsSectionHeader_Right {
	background:transparent url(/images/section_header_left.jpg) no-repeat left bottom;
	width:15px;
}
.CsSectionHeader_Icon {
	vertical-align:middle;
	margin-right:8px;
	margin-bottom:4px;
}
.CsSectionHeader_Title {
	font-size:12px;
	font-family:Arial;
	text-transform:uppercase;
	color:Black;
	font-weight:bold;
}
.pagerNavigationLink {
	margin:5px 0px;
}
.totalResults {
	font-style:italic;
}
.pageFirst {
	background:#ffffff url(/Images/icon/move_frst.gif) no-repeat center center;
}
.pageLast {
	background:#ffffff url(/Images/icon/move_lst.gif) no-repeat center center;
}
.pagePrev {
	background:#ffffff url(/Images/icon/move_lt.gif) no-repeat center center;
}
.pageNext {
	background:#ffffff url(/Images/icon/move_rt.gif) no-repeat center center;
}
.pagerLink, .pagerLinkActive {
	border:1px solid #232F3E;
	padding:2px 4px;
	line-height:25px;
}
.pagerLink {
	color:#232F3E;
	text-decoration:none;
}
.pagerLinkActive {
	background-color:#232F3E;
	color:white;
}
.pagerLink:hover {
	background-color:#dedede;
	text-decoration:none;
}
̌
/* Rating */
.rating {
	border:1px solid black;
}
.ratingStar {
	font-size:0pt;
	width:13px;
	height:12px;
	margin:0px;
	padding:0px;
	cursor:pointer;
	display:block;
	background-image:url(/images/icon/rating.png);
	background-repeat:no-repeat;
}
.emptyRatingStar {
	background-position:left top;
}
.halfRatingStar {
	background-position:left -12px;
}
.filledRatingStar {
	background-position:left -24px;
}
.userHalfRatingStar {
	background-position:left -36px;
}
.userFilledRatingStar {
	background-position:left -48px;
}
.savedRatingStar {
	background-position:left -60px;
}
.KbFavorite {
	line-height:16px;
	vertical-align:text-bottom;
	cursor:pointer;
}
.KbFavorite img {
	border:none;
}
/* New Style Guide*/
.TableTitle1 {
	font-family:Arial;
	font-size:14px;
	font-weight:bold;
	color:#545555;
}
.TableTitle2 {
	font-family:Arial;
	font-size:11px;
	font-weight:bold;
	color:#545555;
}
/* ===== CsSelect ===== */
.PopupSelect {
	border:1px solid #56789A;
	position:relative;
	height:14px;
	overflow:hidden; /* prevent scrollbars */
	padding:1px;
	background-color:#ffffff;
	display:-moz-inline-box;
	display:inline-block;
	float:left; /* makes textbox 100% width. don't know why */
	font-family:Arial;
	font-size:9pt;
}
#dir-rtl .PopupSelect {
	float:right !important; /* makes textbox 100% width. don't know why */
}
.PopupSelect .text {
	border-width:0px;
	width:100%;
	margin-top:-2px;
	padding:0;
}
.PopupSelect .button {
	position:absolute;
	right:0px;
	top:0px;
	width:17px;
	height:16px;
	background:#7F9DB9 url(/images/btn_browse.gif) no-repeat center top;
	font-size:0px;
	padding:0;
}
#dir-rtl .PopupSelect .button {
	left:0;
	right:auto;
}
.PopupSelect .button.delete {
	background-position:center -16px;
}
.watermark_text {
	color:#555555 !important;
}
/*======= Steps Control =====*/
/*--- Horizontal Layout ---*/
ul.StepsCtrl {
	margin:0;
	padding:0;
	list-style-type:none;
	overflow:hidden;
	display:block;
	zoom:1; /* help that "special" browser calculate the element width properly */
	float:left;
	width:100%;
	display:block;
	position:relative;
}
ul.StepsCtrl li {
	float:left;
	position:relative;
	left:100%;
	background-color:white;
}
#dir-rtl ul.StepsCtrl li {
	float:right;
	left:-100%;
}
ul.StepsCtrl li a {
	display:block;
	padding:3px 4px;
	margin:0 1px 0 0;
	color:#232F3E;
	background-color:#cccccc;
	text-decoration:none;
	text-align:center;
}
ul.StepsCtrl li a:hover {
	text-decoration:underline;
}
ul.StepsCtrl li.current {
}
ul.StepsCtrl li.current a {
	color:white;
	background-color:#232F3E;
	cursor:default;
	text-decoration:none;
}
ul.StepsCtrl li.graySubtext {
}
ul.StepsCtrl li.graySubtext a {
	color:#555;
	text-decoration:none;
	cursor:default;
}
/*--- Vertical Layout ---*/
ul.StepsCtrl-Vertical {
	margin:0;
	padding:0;
	list-style-type:none;
	display:block;
	overflow:hidden;
}
ul.StepsCtrl-Vertical li {
	display:block;
	zoom:1;
	margin:0 0 1px 0;
}
ul.StepsCtrl-Vertical li a {
	display:block;
	padding:6px 16px;
	color:#232F3E;
	text-decoration:none;
	text-align:center;
	line-height:12px;
	zoom:1;
}
ul.StepsCtrl-Vertical li a:hover {
	text-decoration:underline;
}
ul.StepsCtrl-Vertical li.current {
}
ul.StepsCtrl-Vertical li.current a {
	color:white;
	background-color:#232F3E;
	cursor:default;
	text-decoration:none;
}
ul.StepsCtrl-Vertical li.graySubText {
}
ul.StepsCtrl-Vertical li.graySubText a {
	color:#555;
	text-decoration:none;
	cursor:default;
}
/* Steps New UI */
.Steps_selected {
	background-image:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fbluebox.png&browser=SF);
	background-repeat:repeat-x;
	text-align:center;
	vertical-align:middle;
	height:60px;
	font-size:10pt;
	font-weight:bold;
	color:White;
}
/*Id Card*/
.delete_idCard2 {
	position:absolute;
	top:5px;
}
.idCard2_contentMiddle {
	padding:0px;
	overflow:auto;
	width:190px;
	background-color:White;
}
.idCard2_footerMiddle {
	width:190px;
	height:15px;
	background:url(/images/IdCards/IdCard2/BottomMiddle.png);
}
.photo_idCard1 {
	margin:17px 5px 0px 14px;
	width:50px;
	height:58px;
	float:left;
}
.OrgDisplayProperties {
	position:relative;
	top:-38px;
}
.SmpHistoryButton {
	position:relative;
	top:-10px;
}
.qtiHistoryLink {
	top:0px;
}
.tblhdrPrimaryColor {
	font-weight:bold;
	font-size:12px;
	color:#ffffff;
	font-family:arial, verdana, trebuchet ms, sans-serif;
	background-color:#232F3E;
}
.brdcrmhdrColor {
	color:#232F3E;
	font-family:arial,arial,verdana,trebuchet ms,sans-serif;
	font-size:18px;
	font-weight:bold;
}
/* Org Chart */
/* For fire fox, every table needs to be stretch to 100% width. */
.stretch table {
}
.profileBigPhoto {
	background:url(/images/ProfilePictureBox.png);
	height:200px;
	width:177px;
	background-repeat:no-repeat;
}
.CsHeaderLinks {
	display:block;
	overflow:auto;
	height:44px;
	line-height:38px;
	padding-left:52px;
	position:relative;
	background:transparent url(/images/button/connectBtn.gif) no-repeat left top;
	text-decoration:none;
	font-size:14px;
	font-weight:bold;
	font-family:Arial, Trebuchet MS, Sans-Serif;
	color:#232F3E;
	cursor:pointer;
	text-align:left;
}
.CsHeaderLinks img {
	border:none;
	vertical-align:middle;
	position:absolute;
	margin-left:-36px;
	margin-top:7px;
}
.CsHeaderLinks .middle {
	display:block;
	background:transparent url(/images/button/connectBtn.gif) repeat-x left -44px;
	height:44px;
	line-height:38px;
	margin-right:24px;
	white-space:nowrap;
	text-align:center;
}
.CsHeaderLinks .rightEnd {
	display:block;
	position:absolute;
	right:0;
	top:0;
	width:24px;
	height:44px;
	line-height:38px;
	background:transparent url(/images/button/connectBtn.gif) no-repeat right top;
	white-space:nowrap;
	text-align:center;
}
.RoundedBox-default {
}
.RoundedBox-default .tl {
	background-image:url(/images/corners1.gif);
	background-repeat:no-repeat;
}
#dir-rtl .RoundedBox-default .tl {
	background-position:right top;
}
.RoundedBox-default .t {
	background-image:url(/images/corners1.gif);
	background-position:left -24px;
	background-repeat:repeat-x;
	height:24px;
}
.RoundedBox-default .tr {
	background-image:url(/images/corners1.gif);
	background-position:right top;
}
#dir-rtl .RoundedBox-default .tr {
	background-position:left top;
}
.RoundedBox-default .l {
	background-image:url(/images/corners2.gif);
	width:24px;
}
#dir-rtl .RoundedBox-default .l {
	background-position:right top;
}
.RoundedBox-default .r {
	background-image:url(/images/corners2.gif);
	background-position:right top;
	width:24px;
}
#dir-rtl .RoundedBox-default .r {
	background-position:left top;
}
.RoundedBox-default .bl {
	background-image:url(/images/corners1.gif);
	background-position:left -48px;
}
#dir-rtl .RoundedBox-default .bl {
	background-position:right -48px;
}
.RoundedBox-default .b {
	background-image:url(/images/corners1.gif);
	background-position:left bottom;
	background-repeat:repeat-x;
	height:24px;
}
.RoundedBox-default .br {
	background-image:url(/images/corners1.gif);
	background-position:right -48px;
}
#dir-rtl .RoundedBox-default .br {
	background-position:left -48px;
}
/* CSPanel.css*/
/* ----- Normal Panel ----- */
.Panel {
}
.PanelIcon {
	position:absolute;
}
a.titleLink b {
	display:block;
}
a .PanelIcon {
}
.PanelIconOverFlow {
	position:relative;
}
.Panel_title {
	border:none;
	width:100%;
    *table-layout: fixed; /* IE7 */
}
.Panel_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) no-repeat left top;
	width:10px;
}
#dir-rtl .Panel_titleLeft {
	background-position:right top;
}
.Panel_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) repeat-x left top;
	background-position:left bottom;
	height:26px;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#ffffff;
	white-space:nowrap;
}
.Panel_titleMiddle h2 {
    display:inline;
}
.Panel_titleMiddle b, 
.Panel_titleMiddle div.Panel_TitleText {
	font-weight:bold;
	padding-left:0px;
	display:inline-block;
}
.Panel_titleMiddle .titleLink {
	position:relative;
	zoom:1;
	display:block;
    font-size:13px;
}
.Panel_titleMiddle div {
	overflow:hidden;
	text-overflow:ellipsis;
}
.Panel_titleMiddle div.PanelIcon {
	overflow:visible !important;
}
.Panel_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) no-repeat right top;
	width:10px;
}
#dir-rtl .Panel_titleRight {
	background-position:left top;
}
.Panel_titleMiddle img,
.Panel_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.Panel_titleMiddle a, 
.Panel_titleMiddle a:hover {
	color:#ffffff;
	text-decoration:none;
	cursor:pointer;
}
.Panel_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel_OutputButton {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	width:16px;
	height:16px;
	cursor:pointer;
}
#dir-rtl .Panel_collapseBtn_collapsed, 
#dir-rtl .Panel_collapseBtn_expanded, 
#dir-rtl .Panel_OutputButton {
	float:left;
}
.Panel_content {
	/*table-layout:fixed;*/
	width:100%;
	text-align:left;
}
#dir-rtl .Panel_content {
	text-align:right;
}
.Panel_contentLeft {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y left top;
	width:1px;
}
.Panel_contentMiddle {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
}
.Panel_contentRight {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y right top;
	width:1px;
}
.Panel_contentRight div, 
.Panel_contentLeft div {
	width:1px;
}
.Panel_footer {
	width:100%;
	line-height:1px;
}
.Panel_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
	width:8px;
}
#dir-rtl .Panel_footerLeft {
	background-position:right top;
}
.Panel_footerMiddle {
	background:url(/images/dialog/panelRound-border-h.png) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.Panel_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
	width:8px;
}
#dir-rtl .Panel_footerRight {
	background-position:left top;
}
.Panel_btnRight {
	text-align: right;
}
#dir-rtl .Panel_btnRight {
	text-align: left;
}
/* ----- Normal Panel End ----- */
/* ----- New Panel Reset ----- */
.cs-panel-flat .Panel_titleLeft,
.cs-panel-flat .Panel_titleMiddle,
.cs-panel-flat .Panel_titleRight,
.cs-panel-flat .Panel_contentLeft,
.cs-panel-flat .Panel_contentRight,
.cs-panel-flat .Panel_footerLeft,
.cs-panel-flat .Panel_footerMiddle,
.cs-panel-flat .Panel_footerRight,
.cs-panel-plain .Panel_titleLeft,
.cs-panel-plain .Panel_titleMiddle,
.cs-panel-plain .Panel_titleRight,
.cs-panel-plain .Panel_contentLeft,
.cs-panel-plain .Panel_contentRight,
.cs-panel-plain .Panel_footerLeft,
.cs-panel-plain .Panel_footerMiddle,
.cs-panel-plain .Panel_footerRight,
.cs-panel-gradient .Panel_titleLeft,
.cs-panel-gradient .Panel_titleMiddle,
.cs-panel-gradient .Panel_titleRight,
.cs-panel-gradient .Panel_contentLeft,
.cs-panel-gradient .Panel_contentRight,
.cs-panel-gradient .Panel_footerLeft,
.cs-panel-gradient .Panel_footerMiddle,
.cs-panel-gradient .Panel_footerRight {
	background-image:none;
}
.cs-panel-flat .Panel_content,
.cs-panel-flat .Panel_contentMiddle,
.cs-panel-plain .Panel_content,
.cs-panel-plain .Panel_contentMiddle,
.cs-panel-gradient .Panel_content,
.cs-panel-gradient .Panel_contentMiddle {
	background-color:#FFF;
}
.cs-panel-flat,
.cs-panel-plain,
.cs-panel-gradient {
	-webkit-border-radius:5px 5px 5px 5px;
	border-radius:5px 5px 5px 5px;
	overflow:hidden;
}
.cs-panel-flat .Panel_title,
.cs-panel-plain .Panel_title,
.cs-panel-gradient .Panel_title {
	border:1px solid;
	-webkit-border-radius:5px 5px 0px 0px;
	border-radius:5px 5px 0px 0px;
}
.cs-panel-flat .Panel_title,
.cs-panel-flat .Panel_content,
.cs-panel-flat .Panel_footer,
.cs-panel-plain .Panel_title,
.cs-panel-plain .Panel_content,
.cs-panel-plain .Panel_footer,
.cs-panel-gradient .Panel_title,
.cs-panel-gradient .Panel_content,
.cs-panel-gradient .Panel_footer {
	border-collapse:separate !important;
	border-style:solid;
	border-spacing:0px;
	border-width:1px;
}
.cs-panel-flat .Panel_footer,
.cs-panel-plain .Panel_footer,
.cs-panel-gradient .Panel_footer {
	background-color:#FFF;
	-webkit-border-radius:0px 0px 5px 5px;
	border-radius:0px 0px 5px 5px;
}
.cs-panel-flat .Panel_titleMiddle div,
.cs-panel-plain .Panel_titleMiddle div,
.cs-panel-gradient .Panel_titleMiddle div,
.cs-panel-flat .Panel_titleMiddle h2,
.cs-panel-plain .Panel_titleMiddle h2,
.cs-panel-gradient .Panel_titleMiddle h2 {
	font-family:"Segoe UI", Arial, sans-serif;
	font-size:14px;
	font-weight:bold;
	letter-spacing:normal;
	line-height:39px;
}
/* ----- Flat Panel ----- */
.cs-panel-flat {
	-webkit-box-shadow:0px 1px 6px 0px #d1d2d3;
	box-shadow:0px 1px 6px 0px #d1d2d3;
}
.cs-panel-flat .Panel_title {
	background-color:#232F3E;
	border:0;
}
.cs-panel-flat .Panel_content {
	border-bottom:0;
	border-color:#d8d8d9;
	border-top:0;
}
.cs-panel-flat .Panel_footer {
	border-color:#d8d8d9;
	border-top:0;
}
/* ----- Flat Panel End ----- */
/* ----- Plain Panel ----- */
.cs-panel-plain {
}
.cs-panel-plain .Panel_title {
	background-color:#FFF;
	border-bottom:0;
	border-color:#c1c2c3;
}
.cs-panel-plain .Panel_content {
	border-bottom:0;
	border-color:#c1c2c3;
	border-top:0;
}
.cs-panel-plain .Panel_footer {
	border-color:#c1c2c3;
	border-top:0;
}
.cs-panel-plain .Panel_titleMiddle div,
.cs-panel-plain .Panel_titleMiddle h2 {
	border-bottom:1px solid #262629;
	color:#262629;
}
/* ----- Plain Panel End ----- */
/* ----- Gradient Panel ----- */
.cs-panel-gradient {
}
.cs-panel-gradient .Panel_title {
	background:-moz-linear-gradient(top, #263344 0%, #151C25 100%); /* FF3.6+ */
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0%,#263344), color-stop(100%,#151C25)); /* Chrome,Safari4+ */
	background:-webkit-linear-gradient(top, #263344 0%, #151C25 100%); /* Chrome10+,Safari5.1+ */
	background:-o-linear-gradient(top, #263344 0%, #151C25 100%); /* Opera 11.10+ */
	background:-ms-linear-gradient(top, #263344 0%, #151C25 100%); /* IE10+ */
	background:linear-gradient(to bottom, #263344 0%, #151C25 100%); /* W3C */
	filter:progid:DXImageTransform.Microsoft.gradient( startColorstr='#263344', endColorstr='#151C25',GradientType=0 ); /* IE6-8 */
	border-bottom:0;
	border-color:#151C25;
}
.cs-panel-gradient .Panel_content {
	border-bottom:0;
	border-color:#151C25;
	border-top:0;
}
.cs-panel-gradient .Panel_footer {
	border-color:#151C25;
	border-top:0;
}
/* ----- Gradient Panel End ----- */
/* ----- Panel3d ----- */
.Panel3d {
	
}
.Panel3d_title {
	width:100%;
	table-layout:fixed;
}
.Panel3d_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:5px;
}
#dir-rtl .Panel3d_titleLeft {
	background-position:right top !important;
	width:4px !important;
}
.Panel3d_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-middle.gif&browser=SF) repeat-x left top;
	height:20px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	color:#232F3E;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.Panel3d_titleMiddle > div {
	display:inline-block;
}
.Panel3d_titleMiddle h2.bodybold {
    font-size:11px;
    display:inline;
}
.Panel3d_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
#dir-rtl .Panel3d_titleRight {
	background-position:left top !important;
}
.Panel3d_content {
	width:100%;
}
.Panel3d_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d_content {
	table-layout:fixed;
}
.Panel3d_contentLeft {
	width:1px;
}
.Panel3d_contentMiddle {
	padding:0px;
	overflow:auto;
}
.Panel3d_contentRight {
	width:1px;
}
.Panel3d_footer {
	width:100%;
	line-height:1px;
}
.Panel3d_footerLeft {
	width:1px;
}
.Panel3d_footerMiddle {
	height:1px;
}
.Panel3d_footerRight {
	width:1px;
}
/* ----- Panel3d End ----- */
/* ----- Panel3d2 ----- */
.Panel3d2 {
	
}
.Panel3d2_title {
	width:100%;
	table-layout:fixed;
}
.Panel3d2_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:5px;
}
#dir-rtl .Panel3d2_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
.Panel3d2_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-middle.gif&browser=SF) repeat-x left top;
	height:20px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.Panel3d2_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
#dir-rtl .Panel3d2_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:4px;
}
.Panel3d2_content {
	width:100%;
}
.Panel3d2_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d2_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d2_content {
	table-layout:fixed;
}
.Panel3d2_contentLeft {
	width:1px;
}
.Panel3d2_contentMiddle {
	padding:0px;
	overflow:auto;
}
.Panel3d2_contentRight {
	width:1px;
}
.Panel3d2_footer {
	width:100%;
	line-height:1px;
}
.Panel3d2_footerLeft {
	width:1px;
}
.Panel3d2_footerMiddle {
	height:1px;
}
.Panel3d2_footerRight {
	width:1px;
}
/* ----- Panel3d2 End ----- */
/* ----- .Panel3dBubble ----- */
.Panel32dBubble {
	
}
.Panel3d2Bubble_title {
	width:100%;
	table-layout:fixed;
}
.Panel3dBubble_title .FieldName {
	width:95%;
}
.Panel32dBubble_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:5px;
}
.Panel3d2Bubble_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-middle.gif&browser=SF) repeat-x left top;
	height:20px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	color:#232F3E;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.Panel3d2Bubble_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
.Panel3d2Bubble_content {
	width:100%;
}
.Panel3d2Bubble_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:6px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d2Bubble_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:6px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.Panel3d2Bubble_content {
	width:100%;
}
.Panel3d2Bubble_contentLeft {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y left top;
	width:1px;
}
.Panel3d2Bubble_contentMiddle {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
}
.Panel3d2Bubble_contentMiddle_LineHeight_1 {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
	line-height:1px;
}
.Panel3d2Bubble_contentRight {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y right top;
	width:1px;
}
.Panel3d2Bubble_footer {
	width:100%;
	line-height:1px;
}
.Panel3d2Bubble_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
	width:8px;
}
.Panel3d2Bubble_footerMiddle {
	background:url(/images/dialog/panelRound-border-h.png) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.Panel3d2Bubble_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
	width:8px;
}
/* Panel3bBubble end */
.Panel3dBubble {
	
}
.Panel3dBubble_title {
	width:100%;
	table-layout:fixed;
}
.Panel3dBubble_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:5px;
}
#dir-rtl .Panel3dBubble_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
.Panel3dBubble_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-middle.gif&browser=SF) repeat-x left top;
	height:20px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	color:#232F3E;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.Panel3dBubble_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat right top;
	width:4px;
}
#dir-rtl .Panel3dBubble_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2f3dpanel%2fpanel-title.gif&browser=SF) no-repeat left top;
	width:4px;
}
.Panel3dBubble_content {
	width:100%;
}
.Panel3dBubble_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:6px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
#dir-rtl .Panel3dBubble_collapseBtn_collapsed {
	float:left;
}
.Panel3dBubble_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:6px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
#dir-rtl .Panel3dBubble_collapseBtn_expanded {
	float:left;
}
.Panel3dBubble_content {
	width:100%;
}
.Panel3dBubble_contentLeft {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y left top;
	width:1px;
}
.Panel3dBubble_contentMiddle {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
}
.Panel3dBubble_contentMiddle_LineHeight_1 {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
	line-height:1px;
}
.Panel3dBubble_contentRight {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y right top;
	width:1px;
}
.Panel3dBubble_footer {
	width:100%;
	line-height:1px;
}
.Panel3dBubble_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
	width:8px;
}
#dir-rtl .Panel3dBubble_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
}
.Panel3dBubble_footerMiddle {
	background:url(/images/dialog/panelRound-border-h.png) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.Panel3dBubble_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
	width:8px;
}
#dir-rtl .Panel3dBubble_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
}
/* ----- Panel3dBubble End ----- */
.PanelNoPadding {
}
.PanelNoPadding_title {
	border:none;
	width:100%;
}
.PanelNoPadding_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) no-repeat left top;
	width:10px;
}
.PanelNoPadding_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) repeat-x left top;
	background-position:left bottom;
	height:26px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	color:#ffffff;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.PanelNoPadding_titleMiddle b {
	padding-left:0px;
}
.PanelNoPadding_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fpanelRound-title.png&browser=SF) no-repeat right top;
	width:10px;
}
.PanelNoPadding_titleMiddle img,
.PanelNoPadding_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.PanelNoPadding_titleMiddle a, 
.PanelNoPadding_titleMiddle a:hover {
	color:#ffffff;
	text-decoration:none;
	cursor:pointer;
}
.PanelNoPadding_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.PanelNoPadding_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.PanelNoPadding_content {
	width:100%;
}
.PanelNoPadding_contentLeft {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y left top;
	width:1px;
}
.PanelNoPadding_contentMiddle {
	background-color:#f9f9f9;
	overflow:auto;
}
.PanelNoPadding_contentMiddle_LineHeight1 {
	background-color:#f9f9f9;
	overflow:auto;
	line-height:1px;
}
.PanelNoPadding_contentRight {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y right top;
	width:1px;
}
.PanelNoPadding_footer {
	width:100%;
	line-height:1px;
}
.PanelNoPadding_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
	width:8px;
}
.PanelNoPadding_footerMiddle {
	background:url(/images/dialog/panelRound-border-h.png) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.PanelNoPadding_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
	width:8px;
}
/*PanelNoPadding End*/
/* HiddenHeader Panel*/
.HiddenHeader {
}
.HiddenHeader_title {
	border:none;
	width:100%;
}
.HiddenHeader_titleLeft, 
#dir-rtl .HiddenHeader_titleRight {
	background:url(/images/dialog/hiddenHeaderTop.png) no-repeat left bottom;
	width:8px;
}
.HiddenHeader_titleMiddle {
	background:url(/images/dialog/hiddenHeaderTop.png) repeat-x left top;
	background-position:left top;
	height:8px;
	font-family:Verdana;
	font-size:11px;
	font-weight:bold;
	color:#ffffff;
	letter-spacing:0.1em;
	white-space:nowrap;
	overflow:hidden;
}
.HiddenHeader_titleMiddle b {
	padding-left:0px;
}
.HiddenHeader_titleRight, 
#dir-rtl .HiddenHeader_titleLeft {
	background:url(/images/dialog/hiddenHeaderTop.png) no-repeat right bottom;
	width:8px;
}
.HiddenHeader_titleMiddle img,
.HiddenHeader_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.HiddenHeader_titleMiddle a, 
.Panel_titleMiddle a:hover {
	color:#ffffff;
	text-decoration:none;
	cursor:pointer;
}
.HiddenHeader_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.HiddenHeader_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.HiddenHeader_content {
	width:100%;
}
.HiddenHeader_contentLeft {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y left top;
	width:1px;
}
.HiddenHeader_contentMiddle {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
}
.HiddenHeader_contentRight {
	background:url(/images/dialog/panelRound-border-v.png) repeat-y right top;
	width:1px;
}
.HiddenHeader_footer {
	width:100%;
	line-height:1px;
}
.HiddenHeader_footerLeft, 
#dir-rtl .HiddenHeader_footerRight {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat left top;
	width:8px;
}
.HiddenHeader_footerMiddle {
	background:url(/images/dialog/panelRound-border-h.png) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.HiddenHeader_footerRight, 
#dir-rtl .HiddenHeader_footerLeft {
	background:url(/images/dialog/panelRound-border-h.png) no-repeat right top;
	width:8px;
}
/* END HiddenHeader Panel */
/* ----- SectionHeader Panel ----- */
.SectionHeaderPanel {
}
.SectionHeaderPanel_title {
	border:none;
	width:100%;
}
.SectionHeaderPanel_titleLeft {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fSectionHeaderPanel.gif&browser=SF) no-repeat left top;
	width:10px;
}
.SectionHeaderPanel_titleMiddle {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fSectionHeaderPanel.gif&browser=SF) repeat-x left top;
	background-position:left bottom;
	height:33px;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#000000;
	white-space:nowrap;
	overflow:hidden;
}
/*.SectionHeaderPanel_titleMiddle > div {
	display:inline-block;
}  --  can't display inline-block divs (ie7-ie8) */
.SectionHeaderPanel_titleMiddle b {
	padding-left:0px;
}
.SectionHeaderPanel_titleRight {
	background:url(/cesimages/CesImageStream.ashx?lm=defaultTabs&color=ff232f3e&enc=1&nogradiant=False&uselineargradient=False&path=%2fDynamicContent%2fimages%2fdialog%2fSectionHeaderPanel.gif&browser=SF) no-repeat right top;
	width:10px;
}
.SectionHeaderPanel_titleMiddle img,
.SectionHeaderPanel_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.SectionHeaderPanel_titleMiddle a, 
.SectionHeaderPanel_titleMiddle a:hover {
	color:#ffffff;
	text-decoration:none;
	cursor:pointer;
}
.SectionHeaderPanel_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
#dir-rtl .SectionHeaderPanel_collapseBtn_collapsed {
    float:left;
}
.SectionHeaderPanel_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
#dir-rtl .SectionHeaderPanel_collapseBtn_expanded {
    float:left;
}
.SectionHeaderPanel_OutputButton {
	float:right;
	vertical-align:middle;
	margin-top:-15px;
	cursor:pointer;
	position:relative;
	padding-left:3px;
}
.SectionHeaderPanel_content {
	width:100%;
}
.SectionHeaderPanel_contentLeft {
	width:1px;
}
.SectionHeaderPanel_contentMiddle {
	padding:8px;
	background-color:#f9f9f9;
	overflow:auto;
}
.SectionHeaderPanel_contentRight {
	width:1px;
}
.SectionHeaderPanel_footer {
	width:100%;
	line-height:1px;
}
.SectionHeaderPanel_footerLeft {
	width:8px;
}
.SectionHeaderPanel_footerMiddle {
	height:8px;
}
.SectionHeaderPanel_footerRight {
	width:8px;
}
#dir-rtl .SectionHeaderPanel_titleLeft {
	background-position:right top;
}
#dir-rtl .SectionHeaderPanel_titleRight {
	background-position:left top;
}
/* ----- SectionHeader Panel End ----- */
/* ----- Section Panel ----- */
.SectionPanel {
}
.SectionPanelIcon {
	position:absolute;
}
a .SectionPanelIcon {
}
.SectionPanelIconOverFlow {
	position:relative;
}
.SectionPanel_title {
	border:none;
	width:100%;
}
.SectionPanel_titleLeft {
	background:url(/images/dialog/Sectionpanelround-title.gif) no-repeat left top;
	width:10px;
}
#dir-rtl .SectionPanel_titleLeft {
	background:url(/images/dialog/Sectionpanelround-title.gif) no-repeat right top;
	width:10px;
}
.SectionPanel_titleMiddle {
	background:url(/images/dialog/Sectionpanelround-title.gif) repeat-x left top;
	background-position:left bottom;
	height:6px;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#5B5B5B;
	letter-spacing:0.1em;
	white-space:nowrap;
}
.SectionPanel_titleMiddle b {
	padding-left:0px;
}
.SectionPanel_titleMiddle .titleLink {
	position:relative;
	zoom:1;
}
.SectionPanel_titleRight {
	background:url(/images/dialog/SectionpanelRound-title.gif) no-repeat right top;
	width:10px;
}
#dir-rtl .SectionPanel_titleRight {
	background:url(/images/dialog/SectionpanelRound-title.gif) no-repeat left top;
	width:10px;
}
.SectionPanel_titleMiddle img,
.SectionPanel_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.SectionPanel_titleMiddle a, 
.SectionPanel_titleMiddle a:hover {
	color:#5B5B5B;
	text-decoration:none;
	cursor:pointer;
}
.SectionPanel_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/Sectionpanel_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanel_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanel_OutputButton {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	width:16px;
	height:16px;
	cursor:pointer;
}
.SectionPanel_content {
	width:100%;
}
.SectionPanel_contentLeft {
	background:url(/images/dialog/Sectionpanelround-border-v.gif) repeat-y left top;
	width:1px;
}
#dir-rtl .SectionPanel_contentLeft {
	background:url(/images/dialog/Sectionpanelround-border-v.gif) repeat-y right top;
	width:1px;
}
.SectionPanel_contentMiddle {
	padding:8px;
	background-color:#E1EBEF;
	overflow:auto;
}
.SectionPanel_contentRight {
	background:url(/images/dialog/Sectionpanelround-border-v.gif) repeat-y right top;
	width:1px;
}
#dir-rtl .SectionPanel_contentRight {
	background:url(/images/dialog/Sectionpanelround-border-v.gif) repeat-y left top;
	width:1px;
}
.SectionPanel_contentRight div, 
.SectionPanel_contentLeft div {
	width:1px;
}
.SectionPanel_footer {
	width:100%;
	line-height:1px;
}
.SectionPanel_footerLeft {
	background:url(/images/dialog/Sectionpanelround-border-h.gif) no-repeat left top;
	width:8px;
}
#dir-rtl .SectionPanel_footerLeft {
	background:url(/images/dialog/Sectionpanelround-border-h.gif) no-repeat right top;
	width:8px;
}
.SectionPanel_footerMiddle {
	background:url(/images/dialog/Sectionpanelround-border-h.gif) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.SectionPanel_footerRight {
	background:url(/images/dialog/Sectionpanelround-border-h.gif) no-repeat right top;
	width:8px;
}
#dir-rtl .SectionPanel_footerRight {
	background:url(/images/dialog/Sectionpanelround-border-h.gif) no-repeat left top;
	width:8px;
}
/* ----- Section Panel End ----- */
/* ----- Section Panel Grey----- */
.SectionPanelGrey {
}
.SectionPanelGreyIcon {
	position:absolute;
}
a .SectionPanelGreyIcon {
}
.SectionPanelGreyIconOverFlow {
	position:relative;
}
.SectionPanelGrey_title {
	border:none;
	width:100%;
}
.SectionPanelGrey_titleLeft {
	background:url(/images/dialog/SectionpanelGrey-title.gif) no-repeat left top;
	width:10px;
}
.SectionPanelGrey_titleMiddle {
	background:url(/images/dialog/SectionpanelGrey-title.gif) repeat-x left top;
	background-position:left bottom;
	height:6px;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#5B5B5B;
	letter-spacing:0.1em;
	white-space:nowrap;
}
.SectionPanelGrey_titleMiddle b {
	padding-left:0px;
}
.SectionPanelGrey_titleMiddle .titleLink {
	position:relative;
	zoom:1;
}
.SectionPanelGrey_titleRight {
	background:url(/images/dialog/SectionpanelGrey-title.gif) no-repeat right top;
	width:10px;
}
.SectionPanelGrey_titleMiddle img,
.SectionPanelGrey_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.SectionPanelGrey_titleMiddle a, 
.SectionPanelGrey_titleMiddle a:hover {
	color:#5B5B5B;
	text-decoration:none;
	cursor:pointer;
}
.SectionPanelGrey_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/SectionPanelGrey_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanelGrey_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanelGrey_OutputButton {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	width:16px;
	height:16px;
	cursor:pointer;
}
.SectionPanelGrey_content {
	width:100%;
}
.SectionPanelGrey_contentLeft {
	background:url(/images/dialog/SectionpanelGrey-border-v.gif) repeat-y left top;
	width:1px;
}
.SectionPanelGrey_contentMiddle {
	padding:8px;
	background-color:#DFDFDF;
	overflow:auto;
}
.SectionPanelGrey_contentRight {
	background:url(/images/dialog/SectionpanelGrey-border-v.gif) repeat-y right top;
	width:1px;
}
.SectionPanelGrey_contentRight div, 
.SectionPanelGrey_contentLeft div {
	width:1px;
}
.SectionPanelGrey_footer {
	width:100%;
	line-height:1px;
}
.SectionPanelGrey_footerLeft {
	background:url(/images/dialog/SectionpanelGrey-border-h.gif) no-repeat left top;
	width:8px;
}
.SectionPanelGrey_footerMiddle {
	background:url(/images/dialog/SectionpanelGrey-border-h.gif) repeat-x left bottom;
	background-position:left bottom;
	height:8px;
}
.SectionPanelGrey_footerRight {
	background:url(/images/dialog/SectionpanelGrey-border-h.gif) no-repeat right top;
	width:8px;
}
/* ----- Section Panel End ----- */
/* ----- Section Panel GreyBorder----- */
.SectionPanelGreyBorder2 {
}
.SectionPanelGreyBorder2Icon {
	position:absolute;
}
a .SectionPanelGreyBorder2Icon {
}
.SectionPanelGreyBorder2IconOverFlow {
	position:relative;
}
.SectionPanelGreyBorder2_title {
	border:none;
	width:100%;
}
.SectionPanelGreyBorder2_titleLeft {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 0 0;
	width:10px;
}
.SectionPanelGreyBorder2_titleMiddle {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) repeat-x 0 -28px;
	height:6px;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
	color:#5B5B5B;
	letter-spacing:0.1em;
	white-space:nowrap;
}
.SectionPanelGreyBorder2_titleMiddle b {
	padding-left:0px;
}
.SectionPanelGreyBorder2_titleMiddle .titleLink {
	position:relative;
	zoom:1;
}
.SectionPanelGreyBorder2_titleRight {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat -11px 0;
	width:10px;
}
#dir-rtl .SectionPanelGreyBorder2_titleRight {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 0 0;
	width:10px;
}
#dir-rtl .SectionPanelGreyBorder2_titleLeft {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat -11px 0;
	width:10px;
}
.SectionPanelGreyBorder2_titleMiddle img,
.SectionPanelGreyBorder2_titleMiddle span {
	position:absolute;
	border:none;
	text-decoration:none;
	vertical-align:middle;
	top:-4px;
}
.SectionPanelGreyBorder2_titleMiddle a, 
.SectionPanelGrey_titleMiddle a:hover {
	color:#5B5B5B;
	text-decoration:none;
	cursor:pointer;
}
.SectionPanelGreyBorder2_collapseBtn_collapsed {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/SectionPanelGrey_arrow_down.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanelGreyBorder2_collapseBtn_expanded {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	background:transparent url(/images/panel_arrow_up.png) no-repeat left top;
	width:16px;
	height:10px;
	cursor:pointer;
}
.SectionPanelGreyBorder2_OutputButton {
	float:right;
	vertical-align:text-bottom;
	margin-top:3px;
	width:16px;
	height:16px;
	cursor:pointer;
}
.SectionPanelGreyBorder2_content {
	width:100%;
}
.SectionPanelGreyBorder2_contentLeft {
	background:url(/images/dialog/SectionpanelGreyBorder-v.gif) repeat-y 0 0;
	width:1px;
}
.SectionPanelGreyBorder2_contentMiddle {
	padding:8px;
	background-color:#F7F7F7;
	overflow:auto;
}
.SectionPanelGreyBorder2_contentRight {
	background:url(/images/dialog/SectionpanelGreyBorder-v.gif) repeat-y 100% 0;
	width:1px;
}
.SectionPanelGreyBorder2_contentRight div, 
.SectionPanelGrey_contentLeft div {
	width:1px;
}
.SectionPanelGreyBorder2_footer {
	width:100%;
	line-height:1px;
}
.SectionPanelGreyBorder2_footerLeft {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 0 -89px;
	width:8px;
}
.SectionPanelGreyBorder2_footerMiddle {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) repeat-x 0 -61px !important;
	height:8px;
}
.SectionPanelGreyBorder2_footerRight {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 100% -89px;
	width:8px;
}
#dir-rtl .SectionPanelGreyBorder2_footerRight {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 0 -89px;
	width:8px;
}
#dir-rtl .SectionPanelGreyBorder2_footerLeft {
	background:url(/images/dialog/SectionpanelGreyBorder-h.gif) no-repeat 100% -89px;
	width:8px;
}
/* ----- Section Panel End ----- */
/* End CSPanel.css*/
/* tabs.css */
/*
 * TAB CONTROL
 */
.CsTabStrip {
	overflow:hidden;
	background:#e2e2e2 url(/images/dialog/tab.gif) repeat-x left 4px;
	padding-top:4px;
	white-space:nowrap;
}
/*--- normal tab ---*/
.CsTab {
	display:inline-block;
	height:25px;
	position:relative;
	text-decoration:none;
}
.CsTab .leftEdge {
	background:transparent url(/images/dialog/tab.gif) no-repeat left -25px;
	position:absolute;
	left:0px;
	top:0px;
	width:12px;
	height:25px;
}
.CsTab span {
	background:transparent url(/images/dialog/tab.gif) repeat-x left -50px;
	color:#232F3E;
	display:block;
	margin:0px 12px;
	line-height:25px;
	text-align:center;
	font-family:Arial;
	font-size:9pt;
	font-weight:normal;
}
.CsTab .rightEdge {
	background:transparent url(/images/dialog/tab.gif) no-repeat right -25px;
	position:absolute;
	right:0px;
	top:0px;
	width:12px;
	height:25px;
}
/*--- mouse over ---*/
.CsTab:hover {
}
.CsTab:hover span {
	background-position:left -100px;
	color:#232F3E;
}
.CsTab:hover .leftEdge {
	background-position:left -75px;
}
.CsTab:hover .rightEdge {
	background-position:right -75px;
}
/*--- selected ---*/
.CsTab-active {
	display:inline-block;
	height:25px;
	position:relative;
	text-decoration:none;
	cursor:default;
}
.CsTab-active span {
	background:transparent url(/images/dialog/tab.gif) repeat-x left -150px;
	color:#525252;
	display:block;
	margin:0px 12px;
	line-height:25px;
	text-align:center;
	font-family:Arial;
	font-size:9pt;
	font-weight:bold;
}
.CsTab-active .leftEdge {
	background:transparent url(/images/dialog/tab.gif) no-repeat left -125px;
	position:absolute;
	left:0px;
	top:0px;
	width:12px;
	height:25px;
}
.CsTab-active .rightEdge {
	background:transparent url(/images/dialog/tab.gif) no-repeat right -125px;
	position:absolute;
	right:0px;
	top:0px;
	width:12px;
	height:25px;
}
/* end tabs.css */
/* tabs_style2.css */
/*
 * TAB CONTROL
 */
.CsTabStrip_Style2 {
	overflow:hidden;
	width:100%;
	background:transparent url(/images/dialog/tab_style2.gif) repeat-x left bottom;
}
/*--- normal tab ---*/
.CsTab_Style2 {
	float:left;
	height:25px;
	position:relative;
	text-decoration:none;
}
#dir-rtl .CsTab_Style2 {
	float:right;
}
.CsTab_Style2 .leftEdge {
	background:transparent url(/images/dialog/tab_style2.gif) no-repeat left top;
	position:absolute;
	left:0px;
	top:0px;
	width:12px;
	height:25px;
}
.CsTab_Style2 span {
	background:transparent url(/images/dialog/tab_style2.gif) repeat-x left -25px;
	color:#232F3E;
	display:block;
	margin:0px 12px;
	line-height:25px;
	text-align:center;
}
.CsTab_Style2 .rightEdge {
	background:transparent url(/images/dialog/tab_style2.gif) no-repeat right top;
	position:absolute;
	right:0px;
	top:0px;
	width:12px;
	height:25px;
}
/*--- mouse over ---*/
.CsTab_Style2:hover {
}
.CsTab_Style2:hover span {
	background-position:left -75px;
	color:#232F3E;
}
.CsTab_Style2:hover .leftEdge {
	background-position:left -50px;
}
.CsTab_Style2:hover .rightEdge {
	background-position:right -50px;
}
/*--- selected ---*/
.CsTab_Style2-active {
	float:left;
	height:25px;
	position:relative;
	text-decoration:none;
	cursor:default;
}
#dir-rtl .CsTab_Style2-active {
	float:right;
}
.CsTab_Style2-active:hover {
	text-decoration:none;
}
.CsTab_Style2-active span {
	background:transparent url(/images/dialog/tab_style2.gif) repeat-x left -125px;
	color:#777777;
	display:block;
	margin:0px 12px;
	line-height:25px;
	text-align:center;
}
.CsTab_Style2-active .leftEdge {
	background:transparent url(/images/dialog/tab_style2.gif) no-repeat left -100px;
	position:absolute;
	left:0px;
	top:0px;
	width:12px;
	height:25px;
}
.CsTab_Style2-active .rightEdge {
	background:transparent url(/images/dialog/tab_style2.gif) no-repeat right -100px;
	position:absolute;
	right:0px;
	top:0px;
	width:12px;
	height:25px;
}
/* END tabs_style2.css */
/* buttons.css */
/* normal state */
.CsImageButton {
	background:url(/images/button/btn-xp-l.gif) no-repeat left top;
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	line-height:22px;
	height:22px;
	padding:0px 0px 0px 10px;
	text-decoration:none !important;
	text-transform:none;
	cursor:pointer;
	white-space:nowrap;
	-moz-user-select:none;
	-webkit-user-select:none;
	outline:none;
}
.CsImageButton span {
	background:url(/images/button/btn-xp-r.gif) no-repeat right top;
    background-position-x: 100.1%;
	padding:0px 10px 0px 0px;
	display:block;
}
.CsImageButton b {
	display:inline-block;
	position:relative;
	color:#223366;
}
/* mouse hover state */
.CsImageButton:hover {
	background-position:left -22px;
}
.CsImageButton:hover span {
	background-position:right -22px;
}
/* pressed state */
.CsImageButton:active,
.CsImageButton:focus /* :active doesn't work in IE8 */ {
	background-position:left -44px;
}
.CsImageButton:active span,
.CsImageButton:focus span /* :active doesn't work in IE8 */ {
	background-position:right -44px;
}
.CsImageButton:active b,
.CsImageButton:focus b /* :active doesn't work in IE8 */ {
	left:1px;
	top:1px;
}
/* disabled state */
.CsImageButton.disabled {
	cursor:default;
}
.CsImageButton.disabled b {
	color:#666;
	text-shadow:1px 1px #fff;
	left:0 !important;
	top:0 !important;
}
.CsImageButton.disabled:hover {
	background-position:left top;
}
.CsImageButton.disabled:hover span {
	background-position:right top;
}
/* ================================================================== */
.CsImageButton2 {
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	background:transparent url(/images/button/connectBtn-l.gif) no-repeat scroll left top;
	text-decoration:none !important;
	cursor:pointer;
	outline:none;
	padding-left:10px;
}
.CsImageButton2 span {
	display:block;
	background:transparent url(/images/button/connectBtn-r.gif) no-repeat scroll right top;
	line-height:37px;
	position:relative;
	padding-right:10px;
}
.CsImageButton2 span b {
	display:inline-block;
	position:relative;
	font-size:14px;
	font-weight:bold;
	padding-left:40px !important;
	color:#333333;
	text-shadow:1px 1px #ffffff;
}
#dir-rtl .CsImageButton2 span b {
	background-position:right top !important;
	padding-right:40px !important;
	padding-left:0px;
	!important;
}
.CsImageButton2:hover {
	background-position:left -44px;
}
.CsImageButton2:hover span {
	background-position:right -44px;
}
.CsImageButton2:hover span {
	
}
/* active state */
.CsImageButton2:active,
.CsImageButton2:focus /* :active doesn't work in IE8 */ {
	background-position:left -88px;
}
.CsImageButton2:active span,
.CsImageButton2:focus span /* :active doesn't work in IE8 */ {
	background-position:right -88px;
}
.CsImageButton2:active b,
.CsImageButton2:focus b /* :active doesn't work in IE8 */ {
	left:1px;
	top:1px;
}
/* disabled state */
.CsImageButton2.disabled {
	cursor:default;
}
.CsImageButton2.disabled b {
	color:#666;
	text-shadow:1px 1px #fff;
	left:0 !important;
	top:0 !important;
}
.CsImageButton2.disabled:hover {
	background-position:left top;
}
.CsImageButton2.disabled:hover span {
	background-position:right top;
}
/* =============================================== */
.CsToolButton {
	background:url(/images/button/btn-tool.gif) no-repeat left top;
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	line-height:22px;
	height:22px;
	padding:0px 0px 0px 6px;
	text-decoration:none !important;
	text-transform:none;
	cursor:pointer;
	white-space:nowrap;
	-moz-user-select:none;
	-webkit-user-select:none;
	outline:none;
}
.CsToolButton span {
	background:url(/images/button/btn-tool.gif) no-repeat right top;
	padding:0px 6px 0px 0px;
	display:block;
}
.CsToolButton b {
	display:inline-block;
	position:relative;
	color:#223366;
}
/* mouse hover state */
.CsToolButton:hover {
	background-position:left -22px;
}
.CsToolButton:hover span {
	background-position:right -22px;
}
/* pressed state */
.CsToolButton:active,
.CsToolButton:focus /* :active doesn't work in IE8 */ {
	background-position:left -44px;
}
.CsToolButton:active span,
.CsToolButton:focus span /* :active doesn't work in IE8 */ {
	background-position:right -44px;
}
.CsToolButton:active b,
.CsToolButton:focus b /* :active doesn't work in IE8 */ {
	left:0px;
	top:1px;
}
/* disabled state */
.CsToolButton.disabled {
	cursor:default;
}
.CsToolButton.disabled b {
	color:#666;
	text-shadow:1px 1px #fff;
	left:0 !important;
	top:0 !important;
}
.CsToolButton.disabled:hover {
	background-position:left top;
}
.CsToolButton.disabled:hover span {
	background-position:right top;
}
/* GREEN CS IMAGE BUTTON - CsImageButtonGrn
-------------------------------------------------------*/
.CsImageButtonGrn {
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	background:transparent url(/images/button/color_btns_lt.png) no-repeat scroll 0 -270px;
	text-decoration:none !important;
	cursor:pointer;
	outline:none;
	padding-left:10px;
}
.CsImageButtonGrn span {
	display:block;
	background:transparent url(/images/button/color_btns_rt.png) no-repeat scroll right -270px;
	line-height:44px;
	position:relative;
	padding-right:10px;
}
.CsImageButtonGrn span b {
	display:inline-block;
	position:relative;
	font-size:14px;
	font-weight:bold;
	padding-left:40px !important;
	color:#fff;
	font-style:italic;
	white-space:nowrap;
	overflow:hidden;
}
.CsImageButtonGrn:hover {
	background-position:left -315px;
}
.CsImageButtonGrn:hover span {
	background-position:right -315px;
}
.CsImageButtonGrn:hover span {
}
/* active state */
.CsImageButtonGrn:active,
.CsImageButtonGrn:focus /* :active doesn't work in IE8 */ {
	background-position:left -360px;
}
.CsImageButtonGrn:active span,
.CsImageButtonGrn:focus span /* :active doesn't work in IE8 */ {
	background-position:right -360px;
}
.CsImageButtonGrn:active b,
.CsImageButtonGrn:focus b /* :active doesn't work in IE8 */ {
	left:1px;
	top:1px;
}
/* disabled state */
.CsImageButtonGrn.disabled {
	cursor:default;
}
.CsImageButtonGrn.disabled b {
	color:#fff;
	font-style:italic;
	left:0 !important;
	top:0 !important;
}
.CsImageButtonGrn.disabled:hover {
	background-position:left top;
}
.CsImageButtonGrn.disabled:hover span {
	background-position:right top;
}
/* LT BLUE CS IMAGE BUTTON - CsImageButtonBluelt
-------------------------------------------------------*/
.CsImageButtonBluelt {
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	background:transparent url(/images/button/color_btns_lt.png) no-repeat scroll 0 -135px;
	text-decoration:none !important;
	cursor:pointer;
	outline:none;
	padding-left:10px;
}
.CsImageButtonBluelt span {
	display:block;
	background:transparent url(/images/button/color_btns_rt.png) no-repeat scroll right -135px;
	line-height:44px;
	position:relative;
	padding-right:10px;
}
.CsImageButtonBluelt span b {
	display:inline-block;
	position:relative;
	font-size:14px;
	font-weight:bold;
	padding-left:40px !important;
	color:#fff;
	font-style:italic;
	white-space:nowrap;
	overflow:hidden;
}
.CsImageButtonBluelt:hover {
	background-position:left -180px;
}
.CsImageButtonBluelt:hover span {
	background-position:right -180px;
}
.CsImageButtonBluelt:hover span {
}
/* active state */
.CsImageButtonBluelt:active,
.CsImageButtonBluelt:focus /* :active doesn't work in IE8 */ {
	background-position:left -225px;
}
.CsImageButtonBluelt:active span,
.CsImageButtonBluelt:focus span /* :active doesn't work in IE8 */ {
	background-position:right -225px;
}
.CsImageButtonBluelt:active b,
.CsImageButtonBluelt:focus b /* :active doesn't work in IE8 */ {
	left:1px;
	top:1px;
}
/* disabled state */
.CsImageButtonBluelt.disabled {
	cursor:default;
}
.CsImageButtonBluelt.disabled b {
	color:#fff;
	font-style:italic;
	left:0 !important;
	top:0 !important;
}
.CsImageButtonBluelt.disabled:hover {
	background-position:left top;
}
.CsImageButtonBluelt.disabled:hover span {
	background-position:right top;
}
/* DRK BLUE CS IMAGE BUTTON - CsImageButtonBluedrk
-------------------------------------------------------*/
.CsImageButtonBluedrk {
	display:inline-block;
	position:relative; /* @#$% you, IE! */
	background:transparent url(/images/button/color_btns_lt.png) no-repeat scroll 0 0;
	text-decoration:none !important;
	cursor:pointer;
	outline:none;
	padding-left:10px;
}
.CsImageButtonBluedrk span {
	display:block;
	background:transparent url(/images/button/color_btns_rt.png) no-repeat scroll right 0;
	line-height:44px;
	position:relative;
	padding-right:10px;
}
.CsImageButtonBluedrk span b {
	display:inline-block;
	position:relative;
	font-size:14px;
	font-weight:bold;
	padding-left:40px !important;
	color:#fff;
	font-style:italic;
	white-space:nowrap;
	overflow:hidden;
}
.CsImageButtonBluedrk:hover {
	background-position:left -45px;
}
.CsImageButtonBluedrk:hover span {
	background-position:right -45px;
}
.CsImageButtonBluedrk:hover span {
}
/* active state */
.CsImageButtonBluedrk:active,
.CsImageButtonBluedrk:focus /* :active doesn't work in IE8 */ {
	background-position:left -90px;
}
.CsImageButtonBluedrk:active span,
.CsImageButtonBluedrk:focus span /* :active doesn't work in IE8 */ {
	background-position:right -90px;
}
.CsImageButtonBluedrk:active b,
.CsImageButtonBluedrk:focus b /* :active doesn't work in IE8 */ {
	left:1px;
	top:1px;
}
/* disabled state */
.CsImageButtonBluedrk.disabled {
	cursor:default;
}
.CsImageButtonBluedrk.disabled b {
	color:#fff;
	font-style:italic;
	left:0 !important;
	top:0 !important;
}
.CsImageButtonBluedrk.disabled:hover {
	background-position:left top;
}
.CsImageButtonBluedrk.disabled:hover span {
	background-position:right top;
}
/* END buttons.css */
/* ----------------------------------------------------------------------------
 * Dialog contents
 * ----------------------------------------------------------------------------
 */
.CsDialog_contentTable_content_l {
	width:5px;
	background:url(/images/dialog/frame-v-cool.png) repeat-y left top;
	background-position:0px top;
}
.CsDialog_contentTable_content_r {
	width:5px;
	background:url(/images/dialog/frame-v-cool.png) repeat-y right top;
}
.CsDialog_contentTable_lb {
	background:url(/images/dialog/frame-h-cool.png) no-repeat left top;
}
.CsDialog_contentTable_b {
	height:5px;
	background:url(/images/dialog/frame-h-cool.png) repeat-x left bottom;
}
.CsDialog_contentTable_rb {
	background:url(/images/dialog/frame-h-cool.png) no-repeat right top;
}
.CsDialog_contentTable {
	table-layout:fixed;
	width:100%;
}
.CsDialog_contentTable_content {
	background-color:white;
	padding:8px;
}
table.CsDialog_contentTable td.CsDialog_contentTable_content {
	vertical-align:top;
}
.topZIndex {
	z-index:10001;
}
.DialogButtonsPanel {
	text-align:center;
	padding:4px;
}
.none {
	width:0px;
}
.Confirm #icon {
	border:none;
	float:left;
	padding-right:8px;
}
.Confirm #buttons {
	clear:both;
}
.Confirm .confirmContent,
.Confirm #confirmContent {
	clear:right;
}
.dialogBackground {
}
/* ---------------------------------------------------------------------------- */
/* BEGIN Accessible Hidden Content */
.cs-acc-hid-con {
	position:absolute !important;
	height:1px;
	width:1px;
	overflow:hidden;
	*clip:rect(1px 1px 1px 1px); /* IE */
	clip:rect(1px, 1px, 1px, 1px);
	white-space:nowrap;
}
/* END Accessible Hidden Content */
/* BEGIN Table Captions */
.cs-tbl-cap-hdr {
	text-align:left;
}
#dir-rtl .cs-tbl-cap-hdr {
	text-align:right;
}
/* END Table Captions */
/* BEGIN CustomTextControl */
.cs-BILL-box {
	display:inline-block;
	width:95%;
}
.cs-BILL-star {
	display: inline-block;
	vertical-align: top;
	padding: 0 0 0 5px;
}
/* END CustomTextControl */
/* BEGIN LoDetails iframe - for ipad & safari */
.cs-dlgevent-iframe iframe {
	height: 500px !important;
}
/* END LoDetails iframe - for ipad & safari */
/* BEGIN SearchOrgUnit */
.cs-selectuser-wdt th,
.cs-selectuser-wdt td {
	padding-left: 5px;
	padding-right: 5px;
}
/* END SearchOrgUnit */
/* BEGIN TalentProfilePopup */
table.reLayoutWrapper td.reContentCell iframe {
	border:0px none transparent !important; /*for defect 71533 iframe border is showing up in Helicopter View*/
}
/* END TalentProfilePopup */
/* BEGIN ProfileInfoPopup */
.profileInfoPopupTop {
	padding-left: 10px;
	width: 485px;
}
.profileInfoPopupTop span {
	color: Black;
	font-family: Arial;
	font-size: 12px;
	display: block;
}
.profileInfoPopupTop label {
	color: #545555;
	font-family: Arial;
	font-size: 12px;
	font-weight: bold;
}
.profileInfoPopupTop div {
	padding-bottom: 2px;
}
.profileInfoPopupTopRightCellLeft {
	padding-left: 20px;
	padding-right: 20px;
}
.naPerfomance {
	padding-left: 2px;
}
/* END ProfileInfoPopup */
/* BEGIN ces_footer */
.df-footer * {
	font-family: "Segoe UI",Helvetica,Arial,sans-serif !important;
}
.df-footer {
	font-family:"Segoe UI",Helvetica,Arial,sans-serif !important;
	background-color:#E7E7E7;
	border-top:medium none #F2F4F7;
	margin:0 -8px -10px;
	padding:20px 50px 10px 45px;
	zoom:1;
    clear:both;
}
.df-footer:before {
	content:"";
	display:table;
}
.df-footer:after {
	clear:both;
	content:"";
	display:table;
}
.df-logo-footer {
	float:left;
    width:200px;
}
.df-footer__legal {
	color:#4C4C4C;
	float:right;
	font-size:12px;
	margin:-10px 0 20px;
	text-align:right;
}
.df-footer__legal > a {
	color:#60AFD6;
	font-weight:normal;
	transition:all 0.25s ease 0s;
	text-decoration:none;
	font-size:12px;
}
.df-footer__legal > a:hover {
	color:#00467F;
	text-decoration:underline;
}
.df-footer__version {
	color:#E7E7E7;
	font-size:10px;
}
/* END ces_footer */
.csod-ellipsis {
	overflow:hidden;
	display:block;
	width:100%;
	text-overflow:ellipsis;
	white-space:nowrap;
}
/* Remove clear field ability from IE10+ for Google location textbox */
.location-field::-ms-clear {
  width : 0;
  height: 0;
}
