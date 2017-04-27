# magnolia-cms-angular-4
Demo of Magnolia using angular 4 in Edit Page View

# Goals
We are trying to avoid creating two templates for each "component".  
When using the Edit Page View in Magnolia we cannot get it to function with angular 4 rendering the content.
I am using a work around to copy the content rendered by magnolia into the angular app.component template.  
This copies the green menu bars but the events do not get attached to the new menus.  
I am NOT surprised the events are not attached but need a way to get the events attached or to come up with a better work around.

# Demo project
ng-4.ftl is using a work around to copy the innerHtml from <div id="appContent">..</div> to the window.mainTemplate object. 
It then loads the angular main.bundle.js which copies the window.mainTemplate to template of app.component.ts.

The rendered page shows both versions of the mgnlEditorBar, but only the original one rendered with the hero.ftl handles select, click and edit events.
See ScreenShot01.png

# Replicate issue
clone repository and copy into magnolia 5.5 folder apache-tomcat/webapps/magnoliaAuthor/modules/ .  
Create a new page using Angular 4 Example and add a Hero component.
