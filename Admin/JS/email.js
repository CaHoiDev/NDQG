function sendEmail(email, subject, body) {
    Email.send({
        Host: "smtp.gmail.com",
        Username: 'haxom747@gmail.com',
        Password: "jnzhgovlquiijmco",
        To: `${email}`,
        From: 'haxom747@gmail.com',
        Subject: `${subject}`,
        Body: `${body}`
    })

}

function TaoSoNgauNhien(min, max) {
    return Math.floor(Math.random() * (max - min)) + min;
};

function codeOTP() {
    var email = document.getElementById('email').value;
    var nameUser = document.getElementById('name').value;
    const password = document.getElementById("mk").value;

    var otp = TaoSoNgauNhien(100000, 999999);
    var subject = "[NDQG] OTP code";
    var body = `Dear : ${nameUser}<br> This is OTP code: ${otp}`;
    checkUser(nameUser, email, password, subject, body, otp)
}
// --- phần đăng nhập -----
const user_Api = "https://6259a0fd43fda1299a10a3ef.mockapi.io/users";

function senEmail() {
    codeOTP();
}

function check() {
    const username = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("mk").value;

    if (username == "" || email == "" || password == "") {
        alert("You must enter all the information to log in!");
    }
}

function checkUser(nameUser, email, password, subject, body, otp) {
    var textTF = false;
    axios.get(`${user_Api}`).then(res => {
        var myData = res.data;
        for (let index = 0; index < myData.length; index++) {
            if ((nameUser == myData[index].userName) && (password == myData[index].userPassword)) {
                sendEmail(email, subject, body);
                textTF = true;
                alert("Please check the OTP code");
                checkOTP(otp);
            }

        }
        if (textTF == false) {
            resetRegister();
            alert(" Check your account !!");
        }

    });

}


function resetRegister() {
    document.getElementById('email').value = "";
    document.getElementById('name').value = ""
    document.getElementById('mk').value = ""
}

function checkOTP(otp) {
    var codeOTP = prompt("Enter your OTP code");
    var count = 1;

    while (otp != codeOTP) {
        if (count == 5) {
            alert("You have entered the OTP code more than 5 times, please check to log in again.")
            break;
        }
        count++;
        alert("You must log in again")
        codeOTP = prompt("Enter your OTP code");
        break;
    }
    if (count != 5) {
        alert("login successful")
        window.location = "http://127.0.0.1:5501/pages/admin.html"
    }
}