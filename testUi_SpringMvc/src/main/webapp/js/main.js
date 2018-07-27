requirejs.config({
    "baseUrl": "js/lib",
    "paths": {
        "app": "../common"
    },
    //处理没有遵循AMD规范的js
    "shim": {
    	"map.js": ["jquery"]
    }
});
