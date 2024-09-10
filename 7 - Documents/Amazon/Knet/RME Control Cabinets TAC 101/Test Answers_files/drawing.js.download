// Has drawing functions

function GetRelativeBounds(elem) {
	var bounds = {
		x: elem.offsetLeft,
		y: elem.offsetTop,
		width: elem.offsetWidth,
		height: elem.offsetHeight,
		right: elem.offsetLeft + elem.offsetWidth - 1,
		bottom: elem.offsetTop + elem.offsetHeight - 1
	};
	return bounds;
}

function GetDrawingBounds(element){
    var bounds = Sys.UI.DomElement.getBounds(element);
    //window.offSetDrawingBounds - the offset should only be applied on certain doctypes.
    if (isIE() && window._offSetDrawingBounds) {
        bounds.y += document.body.scrollTop;
        bounds.x += document.body.scrollLeft;
    } else if (element.ownerDocument.body) {
        if(element.ownerDocument.body.scrollTop)
            bounds.y = Math.round(element.getBoundingClientRect().top) + element.ownerDocument.body.scrollTop;
        if (element.ownerDocument.body.scrollLeft)
        bounds.x = Math.round(element.getBoundingClientRect().left) + element.ownerDocument.body.scrollLeft;
    }
	bounds.midX = bounds.x + (bounds.width / 2);
	bounds.midY = bounds.y + (bounds.height / 2);
	bounds.right = bounds.x + bounds.width;
	bounds.bottom = bounds.y + bounds.height;
    return bounds;
}

function RecalculateBounds(bounds)
{
	bounds.midX = bounds.x + (bounds.width / 2);
	bounds.midY = bounds.y + (bounds.height / 2);
	bounds.right = bounds.x + bounds.width;
	bounds.bottom = bounds.y + bounds.height;
    return bounds;
}


function GetDrawingBoundsWitoutMargins(element){
	var bounds = GetDrawingBounds(element);	
	bounds.height = AddPropertyValue(bounds.height, element.style.marginBottom, false);
	bounds.height = AddPropertyValue(bounds.height, element.style.marginTop, false);
	return RecalculateBounds(bounds);
}

function AlignElementCenter(elementToAlign, parentElement)
{
    AlignElementHCenter(elementToAlign, parentElement);
    AlignElementVCenter(elementToAlign, parentElement);
}


function GetAlignElementHCenter(elementToAlign, parentElement) {
	return GetAlignElementHCenterFromBounds(GetDrawingBounds(elementToAlign), GetDrawingBounds(parentElement));
}

function GetAlignElementHCenterFromBounds(elementToAlignBounds, parentElementBounds) {
	var elementWidth = elementToAlignBounds.width;
   	return ((parentElementBounds.width - elementWidth) / 2 + parentElementBounds.x);
}

//NOTE: Make sure that element.style.left \ .top are set if you plan to use them.
function OffsetElement(element, offsetX, offsetY)
{
    var elementBounds = GetDrawingBounds(element);
    if(offsetX != 0)
    {
        element.style.left = parseInt(element.style.left) + offsetX + 'px';
    }
    if(offsetY  != 0)
    {
        element.style.top = parseInt(element.style.top) + offsetY + 'px';
    }
   }


function AlignElementBottom(elementToAlign, parentElement, offsetValue) {
	if (!offsetValue)
		offsetValue = 0;
	var elementHeight = GetDrawingBounds(elementToAlign).height;
	var parentElementBounds = GetDrawingBounds(parentElement);
	elementToAlign.style.top = parentElementBounds.y - elementHeight + offsetValue;
	//alert(parentElementBounds.y);
}

function AlignElementHCenter(elementToAlign, parentElement)
{
    elementToAlign.style.left = GetAlignElementHCenter(elementToAlign, parentElement) + 'px';
}

//Actually sets the top value
function AlignElementVCenter(elementToAlign, parentElement)
{
    elementToAlign.style.top = GetAlignElementVCenter(elementToAlign, parentElement) + 'px';
}

//Returns the numeric value of what to set the top to
function GetAlignElementVCenter(elementToAlign, parentElement)
{
	return GetAlignElementVCenterFromBounds(GetDrawingBounds(elementToAlign), GetDrawingBounds(parentElement));
}

function GetAlignElementVCenterFromBounds(elementToAlignBounds, parentElementBounds) {
    var elementHeight = elementToAlignBounds.height;
    return ((parentElementBounds.height - elementHeight) / 2 + parentElementBounds.y);
}

function AlignElementRight(elementToAlign, parentElement, offsetValue) {
	if (!offsetValue || offsetValue == null)
		offsetValue = 0;
    var elementWidth = GetDrawingBounds(elementToAlign).width;
    var parentElementBounds = GetDrawingBounds(parentElement);
    elementToAlign.style.left = ((parentElementBounds.right + offsetValue) - elementWidth) + 'px';
}

function AlignElementLeft(elementToAlign, parentElement)
{
    var elementHeight= GetDrawingBounds(parentElement).y;
    var parentElementBounds = GetDrawingBounds(parentElement);
    elementToAlign.style.left = (parentElementBounds.right) + 'px';
    elementToAlign.style.top = elementHeight+'px';
}

function AlignElementBelowBottom(elementToAlign, parentElement)
{
    var parentElementBounds = GetDrawingBounds(parentElement);
    var parentElementBottomY = parentElementBounds.height + parentElementBounds.y;
    elementToAlign.style.top = parentElementBottomY;
}

function AddPropertyValue(elementSide, value, doPositive)
{
	if(value != null && value != '')
	{
		if(doPositive)
			elementSide += parseInt(value);
		else
			elementSide -= parseInt(value);
	}
	return elementSide;
}


function GetBoundingLines(element)
{
	var boxLineArray = new Array();
	var bounds = GetDrawingBoundsWitoutMargins(element);
	
	var topBorder = GetLineCoordinates(bounds.x, bounds.right, bounds.y, bounds.y);
	var bottomBorder = GetLineCoordinates(bounds.x, bounds.right, bounds.bottom, bounds.bottom);
	var leftBorder = GetLineCoordinates(bounds.x, bounds.x, bounds.y, bounds.bottom);
	var rightBorder = GetLineCoordinates(bounds.right, bounds.right, bounds.y, bounds.bottom);
	boxLineArray.push(topBorder);
	boxLineArray.push(bottomBorder);
	boxLineArray.push(leftBorder);
	boxLineArray.push(rightBorder);
	return boxLineArray;
}


JPoint = function(x, y) {
    this._X = x;
    this._Y = y;
}

JPoint.prototype = {
}


JDrawLines = function(firstPoint, canvasName, color){
    this._LastPoint = firstPoint;
    //this.jg = new jsGraphics($get(canvasName));
    this.jg = new jsGraphics(canvasName);
    this.jg.setColor(color);
    this._ClipElements = new Array();
    this._ViewPortElement = null;
}

JDrawLines.prototype = {
    DrawNextLine : function(nextPoint){
        this.DrawLine(this._LastPoint, nextPoint);
        this._LastPoint = nextPoint;
    },
    
    DrawXLine : function(x){
        this.DrawNextLine(new JPoint(x, this._LastPoint._Y));
    },
    
    DrawYLine : function(y){
        this.DrawNextLine(new JPoint(this._LastPoint._X, y));
    },
    
    
    RewriteLineForViewPort : function(point1, point2){
        var bounds = this.get_ViewPortBounds();
		var returnLine = GetLineCoordinates(point1._X, point2._X, point1._Y, point2._Y);
		
		//*** Should not need to do this anymore because the canvas is now inside the view port div.
		return returnLine;
		
		if(bounds == null)
			return returnLine;
		else
		{
//			if(point1._X < returnLine.begin._X)
//				returnLine.begin._X = point1._X;
			var numRewrote = 0; //If rewrote both the x and y boundries, then it is outside of the viewport
			if(returnLine.begin._X > bounds.right)
			{
				returnLine.begin._X = bounds.right;
				numRewrote++;
			}
			if(returnLine.end._X > bounds.right)
			{
				returnLine.end._X = bounds.right;
				numRewrote++;
			}
			if(returnLine.begin._Y > bounds.bottom)
			{
				returnLine.begin._Y = bounds.bottom;
				numRewrote++;
			}
			if(returnLine.end._Y > bounds.bottom)
			{
				returnLine.end._Y = bounds.bottom;
				numRewrote++;
			}
			
			
			if(returnLine.begin._X < bounds.x)
			{
				returnLine.begin._X = bounds.x;
				numRewrote++;
			}
			if(returnLine.begin._Y < bounds.y)
			{
				returnLine.begin._Y = bounds.y;
				numRewrote++;
			}
			if(returnLine.end._X < bounds.x)
			{
				returnLine.end._X = bounds.x;
				numRewrote++;
			}
			if(returnLine.end._Y < bounds.y)
			{
				returnLine.end._Y = bounds.y;
				numRewrote++;
			}
			
			
			if(numRewrote >= 2)
				return null;
			else
				return returnLine;
		}
    },
	
    DrawLine : function(point1, point2){
		//Swap points
		if(point1._X > point2._X)
		{
			var tempPoint = point1;
			point1 = point2;
			point2 = tempPoint;
		}
		else if(point1._Y < point2._Y)
		{
			var tempPoint = point1;
			point1 = point2;
			point2 = tempPoint;		
		}
		
		var linesToDraw = new Array();
		var intersectionArray = new Array();
//		for(var i = 0; i < this._ClipElements.length; i++)
//		{
//			var intersectionLine = ElementClips(this._ClipElements[i], point1, point2);
//			if(intersectionLine != null)
//				intersectionArray.push(intersectionLine);
//		}
		
		var tempLine = this.RewriteLineForViewPort(point1, point2);
		if(tempLine == null) //Nothing to draw, outside of ViewPort
			return;
			
		point1._X = tempLine.begin._X;
		point1._Y = tempLine.begin._Y;
		point2._X = tempLine.end._X;
		point2._Y = tempLine.end._Y;
		
		//NOTE: Does not work with overlapping elements.
		if(intersectionArray.length > 0)
		{
			var mainLine = GetLineCoordinates(point1._X, point2._X, point1._Y, point2._Y);
			var slope = 1;
			if(point2._X - point1._X != 0)
			{
			    slope = (point2._Y - point1._Y) / (point2._X - point1._X);
			}
		    window.sortIntersection = new SortIntersectionArray(slope);
		    intersectionArray.sort(sortWindowIntersection);
			
		    var firstDrawingPoint, finalDrawingPoint;
		    if(slope >= 0){
			    firstDrawingPoint = point1;
			    finalDrawingPoint = point2;
		    }
		    else{
			    firstDrawingPoint = point2;
			    finalDrawingPoint = point1;
		    }
			
		    //NOTE: 99% sure that this is wrong, but it seems to work for the simple case, so I am going to keep it for now.
		    var previousDrawnPoint = firstDrawingPoint;
		    for(var i = 0; i < intersectionArray.length; i++)
		    {
			    var intersectionPoint = intersectionArray[i];
			    this.DrawFinalLine(previousDrawnPoint, intersectionPoint);
			    previousDrawnPoint = intersectionPoint;
		    }
		    this.DrawFinalLine(previousDrawnPoint, finalDrawingPoint);
		    //Sys.Debug.trace(DebugPoint(previousDrawnPoint) + ', ' + DebugPoint(finalDrawingPoint));
        }
        else
        {
			this.DrawFinalLine(point1, point2);
        }
    },
    
    
    DrawFinalLine : function(pointA, pointB)
    { //Checks the viewport intersection        
    	var bounds = this.get_ViewPortBounds();
	    if(bounds != null)
	    {
	        pointA._Y -= bounds.y;
	        pointB._Y -= bounds.y;
	        
	        if($get('dvViewPort') != null)
	        { //Special code for orgchart
	            var boundsInner = GetDrawingBounds($get('dvViewPort'));
	            pointA._X -= boundsInner.x;
	            pointB._X -= boundsInner.x;
	            var viewPortTop = 0;
	            if($get('dvViewPort').style.top != '')
	            {
	                pointA._Y -= parseInt($get('dvViewPort').style.top);
	                pointB._Y -= parseInt($get('dvViewPort').style.top);
	            }
	        }
	    }
	    
		this.jg.drawLine(pointA._X, pointA._Y, pointB._X, pointB._Y);
//		if(this._ViewPortElement != null)
//		{
//			var intersectionLine = ElementClips(this._ViewPortElement, pointA, pointB);
//			if(intersectionLine != null)
//			{
//				this.jg.drawLine(intersectionLine.begin._X, intersectionLine.begin._Y, intersectionLine.end._X, intersectionLine.end._Y);
//			}
//		}
//		else
//		{
//			this.jg.drawLine(pointA._X, pointA._Y, pointB._X, pointB._Y);
//		}
    },
    
    get_ViewPortBounds : function(){
		if(this._ViewPortElement == null)
			return null;
		else if(this._ViewPortBounds == null)
			this._ViewPortBounds = GetDrawingBounds(this._ViewPortElement);
		return this._ViewPortBounds;
    },
    
    Paint : function(){
        this.jg.paint();
    }
}

function DebugPoint(point)
{
	return '(' + point._X + ',' + point._Y + ')';
}

function sortWindowIntersection(a, b)
{
	return window.sortIntersection.Sort(a, b);
}

SortIntersectionArray = function(slope)
{
	if(slope >= 0)
		this._SlopeIsPositive = 1;
	else
		this._SlopeIsPositive = -1;
}

SortIntersectionArray.prototype = {
	Sort : function(intersectionA, intersectionB)
	{
		if(intersectionA.begin._X < intersectionB.begin._X)
		{
			return -1 * this._SlopeIsPositive;
		}
		else if(intersectionA.begin._X > intersectionB.begin._X)
		{
			return 1 * this._SlopeIsPositive;		
		}
		else
		{
			if(intersectionA.begin._Y > intersectionB.begin._Y)
				return -1;
			else if(intersectionA.begin._Y < intersectionB.begin._Y)
				return 1;
			else
				return 0;
		}
	}
}

function ElementClips(element, point1, point2)
{
	var bounds = GetDrawingBoundsWitoutMargins(element);
	var mainLine = GetLineCoordinates(point1._X, point2._X, point1._Y, point2._Y);
	var boxLineArray = GetBoundingLines(element);
	var intersection1, intersection2;
	for(var iClip = 0; iClip < boxLineArray.length; iClip++)
	{
	    var boxLine = boxLineArray[iClip];
	    if(LinesIntersect(mainLine, boxLine)){
		    var intersection = LineIntersection(mainLine, boxLine);
		    if(intersection != null)
		    {
			    if(intersection1 == null)
				    intersection1 = intersection;
			    else if(intersection2 == null)
			    {
				    intersection2 = intersection;
			    }
			    else
				    Sys.Debug.fail('Both intersections cannot be null');
		    }
		    else
		    {
		        //Sys.Debug.fail('LineIntersection and LineIntersect have different values');
		    }
		}
	}
	if(intersection1 == null && intersection2 == null)
		return null;
	else if(intersection1 != null && intersection2 != null){
		var intersectionLine = GetLineCoordinates(intersection1._X, intersection2._X, intersection1._Y, intersection2._Y);
		return intersectionLine;
	}
	else{
		//Sys.Debug.fail('Not only 1 intersection cannot be null.');
		//NOTE: If the points touch on one pixel then intersection2 will be null and it is not truly an intersection but rather the destination.
		return null;
	}
}

//Finds the determinent
function Det(a, b, c, d)
{
	return (a * d) - (b * c);
}

//Makes sure that lines really do intersect
function LinesIntersect(lineA, lineB)
{
    var x1 = lineA.begin._X;
	var x2 = lineA.end._X;
	var x3 = lineB.begin._X;
	var x4 = lineB.end._X;
	
	var y1 = lineA.begin._Y;
	var y2 = lineA.end._Y;
	var y3 = lineB.begin._Y;
	var y4 = lineB.end._Y;
	
	if(x1 > x2){
	    var c = x1;
	    x1 = x2;
	    x2 = c;
	}
	
	if(x3 > x4){
	    var c = x3;
	    x3 = x4;
	    x3 = c;
	}
	
	if(y1 > y2){
	    var c = y1;
	    y1 = y2;
	    y2 = c;
	}
	
	if(y3 > y4){
	    var c = y3;
	    y3 = y4;
	    y3 = c;
	}
	
	if((x1 >= x3 && x1 <= x4) || (x2 >= x3 && x2 <= x4))
	{
	    if((y1 >= y3 && y1 <= y4) || (y2 >= y3 && y2 <= y4))
	    {
	        return true;
	    }
	}
	return false;

    //if(lineA.begin
}

//Techincally this is segment intersection
//Not working right now, supposed to work with all diagonal lines as well, do not need for orgchart
function LineIntersection(lineA, lineB)
{
	var x1 = lineA.begin._X;
	var x2 = lineA.end._X;
	var x3 = lineB.begin._X;
	var x4 = lineB.end._X;
	
	var y1 = lineA.begin._Y;
	var y2 = lineA.end._Y;
	var y3 = lineB.begin._Y;
	var y4 = lineB.end._Y;
	
	var d1 = Det(x1, y1, x2, y2);
	var d2 = Det(x3, y3, x4, y4);
	var denom = Det(x1 - x2, y1 - y2, x3 - x4, y3 - y4);

	if(denom == 0)
	{
		if(d1 == 0 && d2 == 0)
			return null; //Coincident
		else
			return null; //Parallel
	}	
	else
	{
		//Check to see if the segments intersect, all of the other code is for the entire line.
		//if(d1 < 0 && d2 > 0 || d1 > 0 && d2 < 0)

		var intersection = new Object();
		var x = Det(d1, x1 - x2, d2, x3 - x4) / denom;
		var y = Det(d2, y1 - y2, d2, y3 - y4) / denom;
		
		//The 2 if blocks below check to see if the segments criss cross one another
		IsPointInSegment(x, x1, x2);
		IsPointInSegment(x, x3, x4);
		IsPointInSegment(y, y1, y2);
		IsPointInSegment(y, y3, y4);
		
		if(x1 <= x2)
		{
			if(x < x1 || x > x2)
				return null;
		}
		else //(x1 >= x2)
		{
			if(x > x1 || x < x2)
				return null;
		}
		
		if(y1 <= y2)
		{
			if(y < y1 || y > y2)
				return null;
		}
		else //(y1 >= y2
		{
			if(y > y1 || y < y2)
				return null;
		}
		
		intersection._X = x;
		intersection._Y = y;
		return intersection;
	}
}

function IsPointInSegment(intersectPoint, pointA, pointB)
{
	if(pointA <= pointB)
	{
		if(intersectPoint < pointA || intersectPoint > pointB)
			return null;
	}
	else //(x1 >= x2)
	{
		if(intersectPoint > pointA || intersectPoint < pointB)
			return null;
	}
}

function GetLineCoordinates(x1, x2, y1, y2)
{
	var line = new Object();
	line.begin = new Object();
	line.end = new Object();
	line.begin._X = x1;
	line.end._X = x2;
	line.begin._Y = y1;
	line.end._Y = y2;
	return line;
}


function pageWidth() {return window.innerWidth != null? window.innerWidth : document.documentElement && document.documentElement.clientWidth ?       document.documentElement.clientWidth : document.body != null ? document.body.clientWidth : null;} 
function pageHeight() {return  window.innerHeight != null? window.innerHeight : document.documentElement && document.documentElement.clientHeight ?  document.documentElement.clientHeight : document.body != null? document.body.clientHeight : null;} 
function posLeft() {return typeof window.pageXOffset != 'undefined' ? window.pageXOffset :document.documentElement && document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft ? document.body.scrollLeft : 0;} 
function posTop() {return typeof window.pageYOffset != 'undefined' ?  window.pageYOffset : document.documentElement && document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop ? document.body.scrollTop : 0;} 
function posRight() {return posLeft()+pageWidth();} 
function posBottom() {return posTop()+pageHeight();}


function pageMiddle(){
	return new JPoint(posLeft() + pageWidth() / 2, posTop() + pageHeight() / 2);
}

function SetClippingArea(element, top, right, bottom, left)
{
    element.style.clip = 'rect(' + top + ', ' + right + ', ' + bottom + ', ' + left + ')';
}


function SetHeightClippingAreaToElement(element)
{
    var bounds = GetDrawingBounds(element);
    SetClippingArea(element, 'auto', bounds.width + 'px', 'auto', '0px');
}
