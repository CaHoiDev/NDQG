function validateForm() {
    var name = document.getElementById("name").value;
    var comment = document.getElementById("comment").value;

    if (name == "" || comment == "") {
        alert("You must fill in all the information");
    } else {
        alert('Success')
    };
}