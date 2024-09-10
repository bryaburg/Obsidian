Type.registerNamespace('Cornerstone');

Cornerstone.CsPanel = function(element) {
    Cornerstone.CsPanel.initializeBase(this, [element]);
}

Cornerstone.CsPanel.prototype =
{
    initialize: function () {
        Cornerstone.CsPanel.callBaseMethod(this, 'initialize');

        if (this._TitleID)
            this._title = $get(this._TitleID);
        this._collapseLink = $get(this._CollapseLinkID);
        if (this._title)
            this._state = this._title.getElementsByTagName('input')[0];
        this._content = $get(this._ContentID);
        this._footer = $get(this._FooterID);

        // --------------------------------------
        // set initial state (expanded/collapsed)
        // --------------------------------------
        if (this._Collapsible) {
            this._content.style.display = this._state.value == '0' ? 'none' : '';
            this._collapseLink.className = this._CssClassName + '_collapseBtn_' + (this._state.value == '0' ? 'collapsed' : 'expanded');
        }

        if (typeof (Cornerstone$Core$Web$Disposer$IsActive) == "boolean" && Cornerstone$Core$Web$Disposer$IsActive) {
            Cornerstone.Core.Web.Disposer.pushElement(this.get_element());
        }
    },

    dispose: function () {
        if (this.get_element() && this.get_element() != null) {
            $clearHandlers(this.get_element());
        }

        Cornerstone.CsPanel.callBaseMethod(this, 'dispose');

        if (typeof (Cornerstone$Core$Web$Disposer$IsActive) == "boolean" && Cornerstone$Core$Web$Disposer$IsActive) {
            Cornerstone.Core.Web.Disposer.disposeControl(this, 1);
            Cornerstone.Core.Web.Disposer.disposeControl(this.get_element(), 1);
        }
    },


    toggleCollapsed: function () {
        this._Collapsed = !this._Collapsed;

        if (this._Collapsed) {
            this._collapseLink.className = this._CssClassName + '_collapseBtn_collapsed';

            $get(this._ContentID).style.display = 'none';

//            var collapseEffects = [
//				new Effect.BlindUp(this._ContentID, { sync: true }),
//				new Effect.Appear(this._ContentID, { sync: true })
//				];

//            new Effect.Parallel(collapseEffects, { duration: 0.3 });
        }
        else {
            this._collapseLink.className = this._CssClassName + '_collapseBtn_expanded';

            $get(this._ContentID).style.display = '';

//            var collapseEffects = [
//				new Effect.BlindDown(this._ContentID, { sync: true }),
//				new Effect.Appear(this._ContentID, { sync: true })
//				];

//            new Effect.Parallel(collapseEffects, { duration: 0.3 });
        }

        this._state.value = this._Collapsed ? '0' : '1';
    },

    // ========== Properties ==========

    get_CssClassName: function () { return this._CssClassName; },
    set_CssClassName: function (value) { this._CssClassName = value; },

    get_TitleID: function () { return this._TitleID; },
    set_TitleID: function (value) { this._TitleID = value; },

    get_ContentID: function () { return this._ContentID; },
    set_ContentID: function (value) { this._ContentID = value; },

    get_FooterID: function () { return this._FooterID; },
    set_FooterID: function (value) { this._FooterID = value; },

    get_Collapsible: function () { return this._Collapsible; },
    set_Collapsible: function (value) { this._Collapsible = value; },

    get_Collapsed: function () { return this._Collapsed; },
    set_Collapsed: function (value) { this._Collapsed = value; },

    get_CollapseLinkID: function () { return this._CollapseLinkID; },
    set_CollapseLinkID: function (value) { this._CollapseLinkID = value; }
}

Cornerstone.CsPanel.inheritsFrom(Sys.UI.Control);
Cornerstone.CsPanel.registerClass('Cornerstone.CsPanel', Sys.UI.Control);

if( Sys && Sys.Application )
	Sys.Application.notifyScriptLoaded();
