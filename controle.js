function GenererCaptcha() {
  var capatcha = "";
  for (var i = 0; i < 5; i++) {
    k = Math.round(Math.random() * (26 - 1)) + 1;
    if (k % 2 == 0) {
      capatcha = capatcha + String.fromCharCode(k + 64);
    } else {
      capatcha = capatcha + String.fromCharCode(k + 96);
    }
  }
  document.getElementById("cap").value = capatcha;
}
function Verif() {
  if (document.getElementById("h").selectedIndex < 1) {
    alert("choisissez un hotel");
    return false;
  }
  let r11 = document.getElementById("r11").Checked;
  let r12 = document.getElementById("r12").Checked;
  let r13 = document.getElementById("r13").Checked;
  if (r11 == false && r12 == false && r13 == false) {
    alert("vous devez évaluer l'acceuil");
    return false;
  }
  let r21 = document.getElementById("r21").Checked;
  let r22 = document.getElementById("r22").Checked;
  let r23 = document.getElementById("r23").Checked;
  if (r21 == false && r22 == false && r23 == false) {
    alert("la restauration");
    return false;
  }
  let captcha = document.getElementById("cap").value;
  let reponse = document.getElementById("rep").value;
  if (nombreMajus(captcha) != reponse) {
    alert("faux!");
    return false;
  }
}
function nombreMajus(ch) {
  let nb = 0;
  for (let i = 0; i < ch.length; i++) {
    if (ch.charAt(i) >= "A" && ch.charAt(i) <= "Z") nb = nb + 1;
  }
  return nb;
}
