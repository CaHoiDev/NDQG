function addProducts() {
    document.getElementById('product').style.display = 'block';
    document.getElementById('hidden').style.display = 'none';
};

//----------------------------------------------------------
const APTconfirm = "https://6259a0fd43fda1299a10a3ef.mockapi.io/arts";

function showProduct() {

    axios.get(`${APTconfirm}`).then(res => {
        var row = "";
        for (let i = 0; i < res.data.length; i++) {
            row +=
            `
                <tr>
                    <td >
                        <div class="d-flex ali-item-center">
                            <div class="m-r-10"><a class="btn btn-circle btn-primary text-white">QG</a></div>
                            <div class="">
                                <h4 class="m-b-0 font-16">${res.data[i].artName}</h4>
                            </div>
                        </div>
                    </td>
                    <td><img style="width:70px;height:70px;" src="${res.data[i].artImage}" alt="Image product"></td>
                    <td>${res.data[i].date}</td>
                    <td class="edit_delete">
                        <button class="btn btn-outline-primary" onclick="openModalUpdate(${res.data[i].artID})" data-toggle="modal" data-target="#Chinhsua">
                            <i class="fas fa-cogs"></i>
                        </button>
                        <button class="btn btn-outline-success" onclick="deleteproduct(${res.data[i].artID})">
                            <i class="edit fas fa-trash-alt" style="color: red;"></i>
                        </button>
                    </td>
                </tr>
            `
        }
        document.getElementById("tbl").innerHTML = row
    })
}
function openModalUpdate(id) {
        document.getElementById("update").setAttribute("onclick", `update(${id})`)
}
function addProduct(){
    let imageString = "";
    var file =document.getElementById('image')['files'][0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function(){
        imageString = reader.result;
        var productName = document.getElementById('pictureName').value
        console.log(image);
        var date = document.getElementById('date').value
        var data = {
            artName: productName,
            artImage: imageString,
            date: date
        }
        axios.post(APTconfirm, data)
            .then((res) => {if (res.status == 201) console.log("Thêm thành công",imageString) ;{location.reload()}});
        }
}

function update(artID) {
    let imageString = "";
    var file =document.getElementById('imgProductd')['files'][0];
    var reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = function(){
        imageString = reader.result;
        var productName = document.getElementById('named').value
        var date1 = document.getElementById('dated').value

    var data = {
        artName: productName,
        artImage: imageString,
        date: date1

    }
    axios.put(`${APTconfirm}/${artID}`, data)
        .then((res) => {if (res.status == 200) console.log("Thêm thành công",imageString) ;{location.reload()}});
    }
}

function deleteproduct(artID) {
    axios.get(`${APTconfirm}/${artID}`)
    axios.delete(`${APTconfirm}/${artID}`).then(() => { location.reload() }
    )
}
showProduct()