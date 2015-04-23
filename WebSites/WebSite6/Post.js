function post(mydata)
{
    VK.api("wall.post", {
        owner_id: '',
        message: mydata
    }, function (data) {});
}