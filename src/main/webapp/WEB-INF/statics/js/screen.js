$(function () {
        /*获取屏幕的大小*/
        var screen_width = screen.width;
        var screen_height = screen.height;
        switch (screen_width) {
            case (3840):
                $("html").css("font-size", "125%");
                break;
            case (1920):
                $("html").css("font-size", "62.5%");
                break;
            case (1366):
                $("html").css("font-size", "35%");
                break;
            default:
                $("html").css("font-size", "62.5%");
                break;
        }
    }
);