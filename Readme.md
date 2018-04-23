# How to show the ASPxLoadingPanel while the content is loading inside the ASPxPopupControl


<p>If a content of the ASPxPopupControl is loaded slowly, you can show a loading panel reflecting this process.</p>


<h3>Description</h3>

<p>The "load" event is fired by the IFrame element when its content becomes loaded. The ASPxLoadingPanel is shown in the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlScriptsASPxClientPopupControl_Showntopic">ASPxClientPopupControl.Shown</a>, and hidden in the <a href="http://www.w3.org/TR/REC-html40/interact/scripts.html#adef-onload">iframe.onload</a> event handlers.</p>

<br/>

