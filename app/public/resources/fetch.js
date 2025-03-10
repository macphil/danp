function hello() {
  var url = "http://172.16.223.106/rrd-api/index.php?source=terrasse";
  var fetchData = {
    method: "GET",
    mode: "cors",
    headers: {
      Accept: "application/json",
    },
  };

  fetch(url, fetchData)
    .then(function (response) {
      console.log(response);
      if (response.ok) return response.json();
      else throw new Error("Temperatur konnte nicht geladen werden");
    })
    .then(function (json) {
      console.log(json);
      var date = new Date(json.dht22.timestamp * 1000);
      document.querySelector("#logTemp").innerHTML = (
        "!!!!!" + Number(json.dht22.temperature).toFixed(1)
      ).slice(-5);
      if (json.dht22.humidity == null) {
        document.querySelector("#logHum").innerHTML = "!-";
      } else {
        document.querySelector("#logHum").innerHTML = (
          "!!!" + Number(json.dht22.humidity).toFixed(0)
        ).slice(-3);
      }
      document.querySelector("#logTime").innerHTML = GetTime(date);
    })
    .catch(function (err) {
      console.log(err);
    });
}

function GetTime(date) {
  return (
    ("0" + date.getHours()).slice(-2) +
    ":" +
    ("0" + date.getMinutes()).slice(-2)
  );
}

function GetDate(date) {
  return (
    ("0" + date.getDate()).slice(-2) +
    "." +
    ("0" + (date.getMonth() + 1)).slice(-2) +
    "." +
    date.getFullYear()
  );
}

hello();

setInterval(hello, 60 * 1000);
