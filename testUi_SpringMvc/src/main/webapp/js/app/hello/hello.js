require(["app/basic/basic", "helloEX"], function (basic, helloEX) {
    console.log("hello!");
    
    var basicJs = basic.basicJs;
    basicJs.showHello();
    
    showHelloEx();
    helloEX.test1();
})