set cache_path to "Macintosh HD:Users:tech-camp:Library:Application Support:Sublime Text 3:Local:Session.sublime_session"
try
  tell application "Google Chrome"
    if application "Google Chrome" is running then
      quit
      repeat until application "Google Chrome" is not running
        delay 1
      end repeat
    end if
    open location "http://Åybasic_user_nameÅz:Åybasic_passwordÅz@master.tech-camp.in/curriculums/986"
    delay 3
    execute front window's active tab javascript "document.getElementById('user_email').value = 'Åyuser_nameÅz'"
    execute front window's active tab javascript "document.getElementById('user_password').value = 'ÅypasswordÅz'"
    execute front window's active tab javascript "document.querySelector('input[type=submit]').click()"
    delay 3
    
    open location "http://master.tech-camp.in/curriculums/987"
    open location "http://master.tech-camp.in/curriculums/1036"
    open location "http://master.tech-camp.in/curriculums/988"
    open location "http://master.tech-camp.in/curriculums/1037"
    open location "http://master.tech-camp.in/curriculums/1049"
    open location "https://tech-camp.in/"
    open location "https://tech-camp.in/proposals/new"
    open location "https://docs.google.com/forms/d/e/1FAIpQLSd-9UEGG10DmjacLOWQFWT2jpUeuGs6svPj2W7P8-NbJLNKbw/viewform"
    open location "https://docs.google.com/forms/d/e/1FAIpQLSfh-fAtbQrk0UaJ_guWM5h-A_dV-2XTmWV9PAlU0I0xnPfkDA/viewform"
    
    delay 1
    
    set (active tab index of front window) to 1
  end tell
  tell application "Script Editor"
    quit
  end tell
end try
