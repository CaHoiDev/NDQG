function validateForm() {
    var name = document.getElementById("name").value;
    var comment = document.getElementById("comment").value;
    var submit = document.getElementById("submit").value;

    if (name == "" || comment == "" || submit == "") {
        alert("You must fill in all the information");
    } else {
        alert('Success')
    };
}