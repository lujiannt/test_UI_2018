require(["app/basic/basic", "helloEX"], function (basic, helloEX) {
    console.log("hello!");
    
    //test require module
    var basicJs = basic.basicJs;
    basicJs.showHello();
    
    //test require module (no AMD)
    showHelloEx();
    helloEX.test1();
})