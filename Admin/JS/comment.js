var url = 'https://625a4a4543fda1299a16b88f.mockapi.io/arts/1/users/1/comments';

const comment = document.querySelector('#comment > ul ')

function renderNoti(item) {
    return (`
        <li>
        <a href="#" class="wave-effect">
            <span class="avatar">
                <img src="https://bootadmin.org/images/demo/profile.png" alt="Mr. Chu" />
            </span>
            <span class="name">${item.userName}</span>
            <span class="message">${item.commentContent}</span>
            <span class="time">${item.date}</span>
        </a>
    </li>`)
}

function loadDoc() {
    fetch('https://625a4a4543fda1299a16b88f.mockapi.io/arts/1/users/1/comments').then(res => res.json())
        .then(res => {

            document.getElementById('noti').innerHTML = res.reverse().map(renderNoti).join(" ");
        })
}

// function myFunction(xml) {
//     var i;
//     var xmlDoc = xml.responseXML;
//     for (i = 0; i < x.length; i++) {
//         table += "<tr><td>" +
//             x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue +
//             "</td><td>" +
//             x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
//             "</td></tr>";
//         if ('userId ' == 'userId ') {}
//     }

// }