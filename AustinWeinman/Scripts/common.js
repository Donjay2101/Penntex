function confirmDelete(id,loadurl)
{
    if(confirm("are you sure you want delete?"))
    {
        $('#overlay').css('display','block');
        $.ajax({
            url:loadurl+"/delete",
            type: "POST",
            data:{id:id},
            success:function(data)
            {
                $("#dataContainer").load(loadurl + "/GetData");
                $('#overlay').css('display','none');
            },
            error:function()
            {

            }


        });
    }
}




function goToPrevious(url)
{
    //debugger;
    //console.log(getURL());
    var txt = decodeURI(url);
    //url =  txt;
    //window.location.assign("http://localhost:53676/")
    if (url == "")
    {
        window.location.href = "/";
    }
    else
    {
        window.location.href = url;
    }
    
    //location.href='../'+txt;
}


function getURL()
{
    var arr = window.location.href.split("/");
    var baseURl = "http://";
    for (i = 2; i <3; i++)
    {
        baseURl += arr[i];
    }

    return baseURl+"/";
}

function goToCreate(url) {

    //debugger;
    var cururl = window.location.href;
    var comidx = cururl.split('/');
    var returnUrl="";
    for (i = 3; i < comidx.length; i++) {
        if (comidx[i] != "#" && comidx[i] != "") {

            returnUrl += "/" + comidx[i];
        }

    }
    var newurl = "";
    if (url.indexOf('?') > 0) {
        newurl = url + "&returnUrl=" + returnUrl;;
    }
    else {
        newurl = url + "?returnUrl=" + returnUrl;
    }

    window.location.href = newurl;
}


function openFiles(id)
{

    $.ajax({
        url: "/AgreementOfSales/GetUploadedFiles?ID=" + id,
        type:"GET",
        success: function (data) {
            $('#overlay2').css('display', 'block');
            $('#divContainer').html(data);
        },
        error: function (err) {
            alert(err.statusText);
        }
    });

}
function downloadFile(id) {
    //debugger;
    window.open('http://localhost:53676/AgreementofSales/DownloadFile?ID=' + id, '_blank');
}