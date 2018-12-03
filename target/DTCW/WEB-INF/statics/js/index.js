$("document").ready(function () {
    $(".button1").click(function () {
            $(".title").html("1");
        }
    );
    $(".button2").click(function () {
            $(".title").html("2");
        }
    );
});

function domclick(data) {
    console.log(data.id);
}