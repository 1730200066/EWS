function createCode(length) {
    var code = "";
    var codeLength = parseInt(length);
    var checkCode = document.getElementById("checkCode");
    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    for (var i = 0; i < codeLength; i++)
    {
        //鑾峰彇闅忔満楠岃瘉鐮佷笅鏍�
        var charNum = Math.floor(Math.random() * 62);
        code += codeChars[charNum];
    }
    if (checkCode)
    {
        checkCode.className = "code";
        checkCode.innerHTML = code;
    }
}