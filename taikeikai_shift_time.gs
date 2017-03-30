function sendToSlack(body, channel) {
  var url = "https://hooks.slack.com/services/???";
  var data = { "channel" : channel, "username" : "体験会シフト申請done♡", "text" : body, "icon_emoji" : ":aw_yeah:" };
  var payload = JSON.stringify(data);
  var options = {
    "method" : "POST",
    "contentType" : "application/json",
    "payload" : payload
  };
  var response = UrlFetchApp.fetch(url, options);
}

function test() {
  sendToSlack("テスト通知確認です♡", "#taikenkai");
}

function onFormSubmit(e){

  var body = "Slack通知テストフォームが来たよ！\n"; 
  var applicant = "";
  var itemResponse = e.response.getItemResponses();

  for (var j = 0; j < itemResponse.length; j++){    
    var formData = itemResponse[j];
    var title = formData.getItem().getTitle();
    var response = formData.getResponse();

    switch (title) {
      case "名前":
        name = response;
        break;
      case "日付":
        date = response;
        break;
      case "申請時間":
        time = response;
        break;
      default:
        break;
    }
  }
  var bodyPublic = "```\n日付:" + body + "名前:" + name + "\n日付:" + date + "\n申請時間:" + time + "\n```";
  sendToSlack(bodyPublic, "#taikenkai");
}