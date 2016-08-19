function confirmDelete(id,loadurl)
{
    if(confirm("are you sure you want delete?"))
    {
        $.ajax({
            url:loadurl+"/delete",
            type: "POST",
            data:{id:id},
            success:function(data)
            {
                $("#dataContainer").load(loadurl + "/GetData");
            },
            error:function()
            {

            }


        });
    }
}