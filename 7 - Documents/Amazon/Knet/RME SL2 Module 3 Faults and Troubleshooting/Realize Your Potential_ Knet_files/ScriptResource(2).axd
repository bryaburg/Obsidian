/*

Sys.Application.initialize();
Sys.Application.add_init(function() {
$create(Sys.Extended.UI.TabStripExtender, 
{
"ActiveTabControlId":"header_navBar_rptTabs_ctl04_dvTab","DefaultDisplayType":null,"OnSubNavChangeFunction":"SubNavChanged","TabContainerControlId":"",
"TabControlList":
[
{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl01_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl01_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl02_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl02_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl03_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl03_dvSubNav","CssClassRollOver":null},{"IsActive":true,"TargetControlId":"header_navBar_rptTabs_ctl04_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl04_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl05_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl05_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl06_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl06_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl07_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl07_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl08_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl08_dvSubNav","CssClassRollOver":null},{"IsActive":false,"TargetControlId":"header_navBar_rptTabs_ctl09_dvTab","TargetSubControlId":"header_navBar_rptSubNavTabs_ctl09_dvSubNav","CssClassRollOver":null}
],
"TabStripHotSpotList":["header_navBar_rptTabs_ctl01_dvTab","header_navBar_rptSubNavTabs_ctl01_dvSubNav","header_navBar_rptTabs_ctl02_dvTab","header_navBar_rptSubNavTabs_ctl02_dvSubNav","header_navBar_rptTabs_ctl03_dvTab","header_navBar_rptSubNavTabs_ctl03_dvSubNav","header_navBar_rptTabs_ctl04_dvTab","header_navBar_rptSubNavTabs_ctl04_dvSubNav","header_navBar_rptTabs_ctl05_dvTab","header_navBar_rptSubNavTabs_ctl05_dvSubNav","header_navBar_rptTabs_ctl06_dvTab","header_navBar_rptSubNavTabs_ctl06_dvSubNav","header_navBar_rptTabs_ctl07_dvTab","header_navBar_rptSubNavTabs_ctl07_dvSubNav","header_navBar_rptTabs_ctl08_dvTab","header_navBar_rptSubNavTabs_ctl08_dvSubNav","header_navBar_rptTabs_ctl09_dvTab","header_navBar_rptSubNavTabs_ctl09_dvSubNav"],
null, null, $get("header_navBar_csTabStrip"));});




Sys.Application.add_init(function() {
$create(Sys.Extended.UI.TabStripExtender, 
{
"ActiveTabControlId":"ctl00_header_navBar_rptTabs_ctl04_dvTab","DefaultDisplayType":null,"OnSubNavChangeFunction":"SubNavChanged","TabContainerControlId":"",
"TabControlList":
[
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl01_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl01_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl02_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl02_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl03_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl03_dvSubNav","CssClassRollOver":null},
{"IsActive":true,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl04_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl04_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl05_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl05_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl06_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl06_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl07_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl07_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl08_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl08_dvSubNav","CssClassRollOver":null},
{"IsActive":false,"TargetControlId":"ctl00_header_navBar_rptTabs_ctl09_dvTab","TargetSubControlId":"ctl00_header_navBar_rptSubNavTabs_ctl09_dvSubNav","CssClassRollOver":null}
],
"TabStripHotSpotList":["ctl00_header_navBar_rptTabs_ctl01_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl01_dvSubNav","ctl00_header_navBar_rptTabs_ctl02_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl02_dvSubNav","ctl00_header_navBar_rptTabs_ctl03_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl03_dvSubNav","ctl00_header_navBar_rptTabs_ctl04_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl04_dvSubNav","ctl00_header_navBar_rptTabs_ctl05_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl05_dvSubNav","ctl00_header_navBar_rptTabs_ctl06_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl06_dvSubNav","ctl00_header_navBar_rptTabs_ctl07_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl07_dvSubNav","ctl00_header_navBar_rptTabs_ctl08_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl08_dvSubNav","ctl00_header_navBar_rptTabs_ctl09_dvTab","ctl00_header_navBar_rptSubNavTabs_ctl09_dvSubNav"]
},
null, null, $get("ctl00_header_navBar_csTabStrip"));
});
*/

/*
**** NOTE ****
Any change here should also be applied to /Core/DummyJsFiles/TabStripExtender.js.
That file is for when the ScriptManager does not exist.
*/

Type.registerNamespace('Sys.Extended.UI');

//Individual Tab Container
Sys.Extended.UI.TabStripTabContainer = function(tabStripExtender, tabControlContainer) {
    this._TabStripExtender = tabStripExtender;
    this._TabControlContainer = tabControlContainer;
}

Sys.Extended.UI.TabStripTabContainer.prototype = {
    tabOnMouseOver: function() {
        this._TabStripExtender.showSubNavTab(this._TabControlContainer);
    }
}

///Tab Strip Extender
Sys.Extended.UI.TabStripExtender = function(element) {
    Sys.Extended.UI.TabStripExtender.initializeBase(this, [element]);

    this._TabControlList = new Array();
    this._ActiveTabContainer = null;
    this._SubTabControlList = new Array();
    this._TabControlList = new Array();
    this._TabStripHotSpotList = null;
    this._actionCounter = 0;
    this._DefaultDisplayType = '';
    this.set_DisplayType(1);
}

Sys.Extended.UI.TabStripExtender.prototype = {
    //Init
    initialize: function() {
        /// <summary>
        /// Initialize the behavior
        /// </summary>
        Sys.Extended.UI.TabStripExtender.callBaseMethod(this, 'initialize');

        this.attachMouseOverToTabHotSpots();
        this.attachMouseOverToSubNav();
        this.showSubNavTab(this._ActiveTabContainer);
    },

    attachMouseOverToTabHotSpots: function() {
        for (var i = 0; i < this._TabStripHotSpotList.length; i++) {
            RegisterHandler(this, $get(this._TabStripHotSpotList[i]), 'mouseover', Function.createDelegate(this, this.rollOverTabHotSpot));
            RegisterHandler(this, $get(this._TabStripHotSpotList[i]), 'mouseout', Function.createDelegate(this, this.rollOffTabHotSpot));
        }
    },

    dispose: function() {
        if (typeof (DisposeHandler) == 'function') {
            DisposeHandler(this);
        }
        Sys.Extended.UI.TabStripExtender.callBaseMethod(this, 'dispose');
    },

    //Methods
    attachMouseOverToSubNav: function() {
        for (var i = 0; i < this._TabControlList.length; i++) {
            var tabContainer = new Sys.Extended.UI.TabStripTabContainer(this, this._TabControlList[i]);
            var tabControl = $get(this._TabControlList[i].TargetControlId);
            if (this._TabControlList[i].TargetControlId == this._ActiveTabControlId)
                this._ActiveTabContainer = this._TabControlList[i];
            if (tabControl != null)
                RegisterHandler(this, tabControl, 'mouseover', Function.createDelegate(tabContainer, tabContainer.tabOnMouseOver));
        }
    },

    //Show the subnav on the current rollover    
    showSubNavTab: function(tabContainer) {
        var inactiveTab = this._CurrentTab;
        if (tabContainer != null) {
            this._actionCounter++;
            if (tabContainer.TargetControlId != null && tabContainer.TargetSubControlId != null && tabContainer.TargetSubControlId != "") {
                var h = this.get_events().getHandler('ShowSubNavTab');
                if (h) {
                    h(this, tabContainer);
                }

                this.setDisplayType($get(tabContainer.TargetSubControlId), true);

                if (this._CurrentSubNav != null && $get(tabContainer.TargetSubControlId) != this._CurrentSubNav) {
                    this.setDisplayType(this._CurrentSubNav, false);
                }
                this._CurrentSubNav = $get(tabContainer.TargetSubControlId);
            }
            else { //In case the tab has no subNav, but we just want to turn off the current one other one
                if (this._CurrentSubNav != null) {
                    this.setDisplayType(this._CurrentSubNav, false);
                }
            }

            //            if(tabContainer.CssClassRollOver != null && tabContainer.CssClassRollOver != '')
            //            {
            //                $get(tabContainer.TargetSubControlId).attributes['class'].value = tabContainer.CssClassRollOver;
            //                $get(this._CurrentTab.TargetControlId).attributes['class'].value = '';
            //            }
            this._CurrentTab = tabContainer;
        }
        else { //If there is no active tab to rest to, tabContainer will be null from rollOffTabHotSpot
            if (this._CurrentSubNav != null) {
                this.setDisplayType(this._CurrentSubNav, false);
            }
        }

        if (this._OnSubNavChangeFunction != null) {
            eval(this._OnSubNavChangeFunction + '(this, inactiveTab);');
        }
    },

    setDisplayType: function(element, isVisible) {
        if (this.get_DisplayType() == 2) {
            if (isVisible == false)
                element.style.visibility = 'hidden';
            else
                element.style.visibility = 'visible';
        }
        else {
            if (isVisible == false)
                element.style.display = 'none';
            else
                element.style.display = this._DefaultDisplayType;
        }
    },

    //This code was then used in the RollOverTimer control. At one point this control should use that one.
    rollOverTabHotSpot: function() {
        this._actionCounter++;
    },

    rollOffTabHotSpot: function() {
        if (this._actionCounter == 1000)
            this._actionCounter = 0;
        var commandString = "if($find('" + this.get_id() + "') != null) $find('" + this.get_id() + "').rollOffTabHotSpotAfterTimer(" + this._actionCounter + ")";
        setTimeout(commandString, this.get_RollTimeOut());
    },


    rollOffTabHotSpotAfterTimer: function(localActionCounter) {
        if (this._actionCounter == localActionCounter) {
            if (this._ActiveTabContainer == null) { //DB - Hide the entire tab strip.  Hiding it this way should be configurable.
                if (this._TabContainerControlId != null && this._TabContainerControlId != '') {
                    this.setDisplayType($get(this._TabContainerControlId), false);
                }
                var h = this.get_events().getHandler('OffHotSpot');
                if (h) h(this, Sys.EventArgs.Empty);
            }
            else
                this.showSubNavTab(this._ActiveTabContainer);
        }
    },

    add_OnShowSubNavTab: function(handler) {
        this.get_events().addHandler('ShowSubNavTab', handler);
    },

    add_OnRollOffHotSpot: function(handler) {
        this.get_events().addHandler('OffHotSpot', handler);
    },

    get_DisplayType: function() {
        return this._displayType;
    },

    set_DisplayType: function(value) {
        this._displayType = value;
    },

    //Properties
    get_TabControlList: function() {
        return this._TabControlList;
    },

    set_TabControlList: function(value) {
        this._TabControlList = value;
    },

    get_TabStripHotSpotList: function() {
        return this._TabStripHotSpotList;
    },

    set_TabStripHotSpotList: function(value) {
        this._TabStripHotSpotList = value;
    },

    get_ActiveTabControlId: function() {
        return this._ActiveTabControlId;
    },

    set_ActiveTabControlId: function(value) {
        this._ActiveTabControlId = value;
    },

    get_TabContainerControlId: function() {
        return this._TabContainerControlId;
    },

    set_TabContainerControlId: function(value) {
        this._TabContainerControlId = value;
    },

    get_OnSubNavChangeFunction: function() {
        return this._OnSubNavChangeFunction;
    },

    set_OnSubNavChangeFunction: function(value) {
        this._OnSubNavChangeFunction = value;
    },

    get_DefaultDisplayType: function() {
        this._DefaultDisplayType;
    },

    set_DefaultDisplayType: function(value) {
        this._DefaultDisplayType;
    },

    get_RollTimeOut: function() {
        return this._RollTimeOut;
    },

    set_RollTimeOut: function(value) {
        this._RollTimeOut = value;
    }

}


Sys.Extended.UI.TabStripExtender.inheritsFrom(Sys.UI.Control);
Sys.Extended.UI.TabStripExtender.registerClass('Sys.Extended.UI.TabStripExtender', Sys.UI.Control);

